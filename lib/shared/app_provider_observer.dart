import "package:flutter_riverpod/flutter_riverpod.dart";

import "logic/message_queue/message_queue.dart";


class AppProviderObserver extends ProviderObserver {
  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value, ProviderContainer container) {
    _log("didAdd - $provider - $value");

    super.didAddProvider(provider, value, container);
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    _log("didFail - $provider - $error");

    super.providerDidFail(provider, error, stackTrace, container);
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    _log('didUpdate - $provider - PREV: "$previousValue" NEW: "$newValue"');

    super.didUpdateProvider(provider, previousValue, newValue, container);
  }

  @override
  void didDisposeProvider(ProviderBase<Object?> provider, ProviderContainer container) {
    _log("dispose - $provider");

    super.didDisposeProvider(provider, container);
  }

  void _log(String message) {
    MessageQueue.instance.sendMessage(Queue.providerObserver, message);
  }
}
