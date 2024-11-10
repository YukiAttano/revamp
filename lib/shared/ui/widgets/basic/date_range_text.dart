import "package:flutter/material.dart";

import "../../../data/nullable_date_time_range.dart";
import "../../../logic/datetime_extension.dart";
import "../../widgets/localized.dart";
import "../../widgets/localized_material.dart";

typedef DateBuilder = Widget Function(BuildContext context, Widget date);

class DateRangeText extends StatelessWidget {
  final DateTime? from;
  final DateTime? to;
  final TooltipTriggerMode mode;
  final DateBuilder builder;

  const DateRangeText._(
      {super.key, required this.from, required this.to, TooltipTriggerMode? mode, DateBuilder? builder})
      : mode = mode ?? TooltipTriggerMode.tap,
        builder = builder ?? _defaultBuilder;

  const DateRangeText({Key? key, TooltipTriggerMode? mode, required DateTime? from, required DateTime? to})
      : this._(key: key, mode: mode, from: from, to: to);

  const DateRangeText.builder({
    Key? key,
    TooltipTriggerMode? mode,
    required DateTime? from,
    required DateTime? to,
    DateBuilder? builder,
  }) : this._(key: key, mode: mode, from: from, to: to, builder: builder);

  @override
  Widget build(BuildContext context) {
    return Localized(
      localize: (s) {
        return LocalizedMaterial(
          localize: (l) {
            String text = NullableDateTimeRange(from: from, to: to).toHumanReadable(l, s);

            String tooltip = "";
            if (from != null) tooltip += l.formatFullDate(from!);
            if (from != null && to != null) tooltip += " - ";
            if (to != null) tooltip += l.formatFullDate(to!);

            return Tooltip(
              showDuration: const Duration(seconds: 3),
              triggerMode: TooltipTriggerMode.tap,
              message: from != null ? tooltip : "",
              child: builder(context, Text(text)),
            );
          },
        );
      },
    );
  }

  static Widget _defaultBuilder(BuildContext context, Widget child) => child;
}
