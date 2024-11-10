import "package:dart_mq/dart_mq.dart";

import "../../../generated/l10n.dart";
import "../localizable.dart";

class LocalizableMessage extends Message implements Localizable<String> {
  LocalizableMessage({
    required Localizable<String> payload,
    super.headers,
    super.timestamp,
  }) : super(payload: payload);

  @override
  String localize(S s) {
    return (payload as Localizable<String>).localize(s);
  }
}
