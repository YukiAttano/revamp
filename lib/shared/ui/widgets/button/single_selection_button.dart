import "package:flutter/material.dart";

class SingleSelectionButton<T> extends StatelessWidget {
  final T? selected;
  final List<ButtonSegment<T>> segments;
  final void Function(T? distance)? onSelectionChanged;
  final ButtonStyle? style;

  const SingleSelectionButton({
    super.key,
    this.selected,
    required this.segments,
    this.onSelectionChanged,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<T>(
      emptySelectionAllowed: true,
      showSelectedIcon: false,
      selected: selected != null ? {selected as T} : const {},
      onSelectionChanged: onSelectionChanged != null ? (value) => onSelectionChanged!(value.firstOrNull) : null,
      segments: segments,
      style: style,
    );
  }
}
