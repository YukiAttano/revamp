import "package:flutter/foundation.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "exceptions/localizable_exception.dart";
import "exceptions/parse_exception.dart";
import "load_snapshot/generic_snapshot.dart";
import "message_queue/message_queue.dart";
import "message_queue/messages/localizable_exception_message.dart";

class GenericStateNotifier<U, T extends GenericSnapshot<U>> extends StateNotifier<T> {
  GenericStateNotifier(super._state);

  @protected
  void _setState(covariant GenericSnapshot<U> state) {
    assert(state is T,
    "The GenericStateNotifier assumes, that state.copyWith returns T which didn't happen in '$runtimeType'");
    this.state = state as T;
  }

  @protected
  Future<void> _request({
    required Future<GenericSnapshot<U>> Function(GenericSnapshot<U> nextState) request,
    bool hideLoading = false,
    bool handleLoading = true,
  }) async {

    if (handleLoading) _setState(state.copyWith(loading: true, hideLoading: hideLoading));

    GenericSnapshot<U> nextState = state;

    try {
      nextState = await request(nextState);
    } on LocalizableException catch (e) {
      nextState = nextState.copyWith(exception: e);
      if (mounted && nextState.hasData) {
        MessageQueue.instance.sendLocalizable(Queue.userError, LocalizableExceptionMessage(e));
      }
    } on Exception catch (e, s) {
      if (kDebugMode) {
        if (e is ParseException) {
          debugPrint(e.error.toString());
          debugPrintStack(stackTrace: e.stackTrace);
        } else {
          debugPrint(e.toString());
          debugPrintStack(stackTrace: s);
        }
      }

      nextState = nextState.copyWith(exception: e);

      if (mounted && nextState.hasData) {
        MessageQueue.instance.sendMessage(Queue.userError, e.toString());
      }
    } finally {
      if (mounted) {
        if (handleLoading) {
          _setState(nextState.copyWith(loading: false, hideLoading: false));
        } else {

          _setState(nextState);
        }
      }
    }
  }

  @protected
  Future<void> request({
    required Future<void> Function() request,
    bool hideLoading = false,
    bool handleLoading = true,
  }) async {
    await _request(
      request: (state) async {
        await request();

        return state.withoutException();
      },
      hideLoading: hideLoading,
      handleLoading: handleLoading,
    );
  }

  @protected
  Future<void> requestData({
    required Future<U> Function() request,
    bool hideLoading = false,
    bool handleLoading = true,
  }) async {
    return _request(
      request: (state) async {
        U data = await request();

        return state.withoutException(data: data);
      },
      hideLoading: hideLoading,
      handleLoading: handleLoading,
    );
  }
}
