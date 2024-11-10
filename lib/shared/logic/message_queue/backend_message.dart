import "package:freezed_annotation/freezed_annotation.dart";

part "backend_message.freezed.dart";

@Freezed(toStringOverride: true, toJson: false, fromJson: false, copyWith: false)
sealed class BackendMessage with _$BackendMessage {
  const BackendMessage._();

  const factory BackendMessage({
    required String srcClass,
    required String message,
    required String devDescription,
  }) = _BackendMessage;

  factory BackendMessage.launchMap(String message, String devDescription) {
    return BackendMessage(
      srcClass: "launch_map.dart",
      message: message,
      devDescription: devDescription,
    );
  }

  /// Used for [Error]s and [Exception]s that are not known and maybe never thrown but better caught and reported if they exist.
  factory BackendMessage.avoidedError(String srcClass, Object? error, String devDescription) {
    return BackendMessage(
      srcClass: srcClass,
      message: error.toString(),
      devDescription: devDescription,
    );
  }
}
