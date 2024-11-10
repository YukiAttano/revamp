import "package:freezed_annotation/freezed_annotation.dart";

import "../generic_state_notifier.dart";

@immutable
class GenericSnapshot<T> {
  final T data;
  final Object? exception;
  final bool loading;
  final bool hideLoading;

  bool get showLoading => !hideLoading && loading;

  bool get hasData => true;

  bool get hasError => exception != null;

  bool get hasResult => hasData || hasError;

  const GenericSnapshot({
    required this.data,
    required this.loading,
    required this.hideLoading,
    required this.exception,
  });

  const GenericSnapshot.init({bool? loading, bool? hideLoading, required T data, Exception? exception})
      : this(loading: loading ?? false, hideLoading: hideLoading ?? false, data: data, exception: exception);

  /// to use this function in [GenericStateNotifier.requestData], this function must return the same runtimeType it is used on.
  /// This means, that this function must be overridden in its subclass.
  ///
  /// It can only be used as is, if the type argument used on [GenericStateNotifier] is [GenericSnapshot]
  @mustBeOverridden
  GenericSnapshot<T> copyWith({T? data, bool? loading, bool? hideLoading, Object? exception}) {
    return GenericSnapshot(
      data: data ?? this.data,
      loading: loading ?? this.loading,
      hideLoading: hideLoading ?? this.hideLoading,
      exception: exception ?? this.exception,
    );
  }

  /// see [copyWith], same applies here
  @mustBeOverridden
  GenericSnapshot<T> withoutException({T? data, bool? loading, bool? hideLoading}) {
    return GenericSnapshot(
      data: data ?? this.data,
      loading: loading ?? this.loading,
      hideLoading: hideLoading ?? this.hideLoading,
      exception: null,
    );
  }
}
