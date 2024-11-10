import "package:flutter/material.dart";

class InheritedListPadding extends InheritedWidget {
  final EdgeInsets padding;

  const InheritedListPadding({super.key, EdgeInsets? padding, required super.child}) :  padding = padding ?? _fallback;

  static const _fallback = EdgeInsets.symmetric(vertical: 4);

  @override
  bool updateShouldNotify(covariant InheritedListPadding oldWidget) {
    return padding != oldWidget.padding;
  }

  static EdgeInsets? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedListPadding>()?.padding;
  }

  static EdgeInsets of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedListPadding>()?.padding ?? EdgeInsets.zero;
  }
}
