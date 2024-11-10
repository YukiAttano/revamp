import "package:freezed_annotation/freezed_annotation.dart";

import "../../../generated/l10n.dart";
import "../localizable.dart";

abstract class LocalizableException implements Localizable<String>, Exception {
  /// {@template shared.logic.localizable_exception}
  /// will be shown instead of [getMessage].
  /// For example: A network call returns a more specific exception message than the default localized message
  /// {@endtemplate}
  final String? message;

  const LocalizableException({this.message});

  /// a default localized message
  @mustBeOverridden
  String getMessage(S s) => throw UnimplementedError();

  /// show the message provided by the exception thrower, if any. Otherwise a fallback is provided by [getMessage].
  @override
  String localize(S s, {bool ignoreOverride = false}) {
    if (message != null && ignoreOverride) return message!;

    return getMessage(s);
  }
}

