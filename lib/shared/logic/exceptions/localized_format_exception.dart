import "../../../generated/l10n.dart";
import "localizable_exception.dart";

class LocalizedFormatException extends LocalizableException {
  const LocalizedFormatException() : super();

  @override
  String getMessage(S s) => s.exception_localized_format;
}
