import "package:flutter/material.dart";

import "../../../../generated/l10n.dart";
import "../../../logic/datetime_extension.dart";
import "../../widgets/localized.dart";
import "../../widgets/localized_material.dart";

typedef DateBuilder = Widget Function(BuildContext context, Widget date);
typedef MissingDateBuilder = String Function(BuildContext context, S s);

class DateText extends StatelessWidget {
  final DateTime? date;
  final TooltipTriggerMode mode;
  final DateBuilder builder;
  final MissingDateBuilder nullBuilder;

  final bool? showWeeks;
  final bool? showDays;
  final bool? showHours;
  final bool? showMinutes;

  final bool showTooltipTime;

  const DateText._({
    super.key,
    required this.date,
    TooltipTriggerMode? mode,
    DateBuilder? builder,
    MissingDateBuilder? nullBuilder,
    this.showWeeks,
    this.showDays,
    this.showHours,
    this.showMinutes,
    bool? showTooltipTime,
  })  : mode = mode ?? TooltipTriggerMode.tap,
        builder = builder ?? _defaultBuilder,
        nullBuilder = nullBuilder ?? _defaultNullBuilder,
        showTooltipTime = showTooltipTime ?? false;

  const DateText({
    Key? key,
    TooltipTriggerMode? mode,
    required DateTime? date,
    MissingDateBuilder? nullBuilder,
    bool? showWeeks,
    bool? showDays,
    bool? showHours,
    bool? showMinutes,
    bool? showTooltipTime,
  }) : this._(
          key: key,
          date: date,
          mode: mode,
          nullBuilder: nullBuilder,
          showWeeks: showWeeks,
          showDays: showDays,
          showHours: showHours,
          showMinutes: showMinutes,
          showTooltipTime: showTooltipTime,
        );

  const DateText.builder({
    Key? key,
    required DateTime? date,
    TooltipTriggerMode? mode,
    DateBuilder? builder,
    MissingDateBuilder? nullBuilder,
    bool? showWeeks,
    bool? showDays,
    bool? showHours,
    bool? showMinutes,
    bool? showTooltipTime,
  }) : this._(
          key: key,
          date: date,
          mode: mode,
          builder: builder,
          nullBuilder: nullBuilder,
          showWeeks: showWeeks,
          showDays: showDays,
          showHours: showHours,
          showMinutes: showMinutes,
          showTooltipTime: showTooltipTime,
        );

  @override
  Widget build(BuildContext context) {
    return Localized(
      localize: (s) {
        String text;

        if (date == null) {
          text = nullBuilder(context, s);
        } else {
          text = date!.toRelativeText(s, weeks: showWeeks, days: showDays, hours: showHours, minutes: showMinutes);
        }

        return LocalizedMaterial(
          localize: (l) {
            return Tooltip(
              triggerMode: TooltipTriggerMode.tap,
              message: _getTooltip(l, date, showTooltipTime),
              child: builder(context, Text(text)),
            );
          },
        );
      },
    );
  }

  static String _getTooltip(MaterialLocalizations l, DateTime? date, bool showTime) {
    if (date == null) return "";

    String tooltip = l.formatFullDate(date);

    if (showTime) tooltip += " ${l.formatTimeOfDay(TimeOfDay.fromDateTime(date))}";

    return tooltip;
  }

  static Widget _defaultBuilder(BuildContext context, Widget child) => child;

  static String _defaultNullBuilder(BuildContext context, S s) => s.unbounded_date;
}
