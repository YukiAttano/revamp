import "../../../../generated/l10n.dart";
import "../../exceptions/localizable_exception.dart";
import "../../localizable.dart";

class LocalizableExceptionMessage implements Localizable<String> {
  final LocalizableException exception;

  const LocalizableExceptionMessage(this.exception);

  @override
  String localize(S s) {
    return exception.localize(s);
  }
}
