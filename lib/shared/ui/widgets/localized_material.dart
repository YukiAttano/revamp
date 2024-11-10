import "package:flutter/material.dart";


class LocalizedMaterial extends StatelessWidget {
  final Widget Function(MaterialLocalizations l) localize;

  const LocalizedMaterial({super.key, required this.localize});

  @override
  Widget build(BuildContext context) {
    MaterialLocalizations l = MaterialLocalizations.of(context);

    return localize(l);
  }
}
