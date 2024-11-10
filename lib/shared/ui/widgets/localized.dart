import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

import "../../../generated/l10n.dart";
import "../../logic/localizable.dart";

class Localized extends StatelessWidget {
  final Widget Function(S s) localize;

  const Localized({super.key, required this.localize});

  factory Localized.exception(Object? e, {Widget Function(String text) builder = Text.new}) {
    return Localized(
      localize: (s) {
        String text;

        if (e is Localizable<String>) {
          text = e.localize(s);
        } else if (kDebugMode) {
          text = e.toString();
        } else {
          text = s.exception_unknown;
        }

        return builder(text);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    S s = S.of(context);

    return localize(s);
  }
}
