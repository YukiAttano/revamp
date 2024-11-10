import "../../../generated/l10n.dart";
import "../localizable.dart";

class ParseException implements Exception, Localizable<String> {
  final TypeError error;
  final StackTrace stackTrace;

  const ParseException(this.error, this.stackTrace);

  @override
  String localize(S s) {
    return s.exception_parse;
  }

  @override
  String toString() {
    return "ParseException: $error";
  }
}
