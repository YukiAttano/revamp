import "package:flutter/material.dart";

import "../../generated/l10n.dart";
import "../data/nullable_date_time_range.dart";

extension DatetimeExtension on DateTime {
  DateTime startOfDay() => DateTime(year, month, day);

  String toRelativeText(S s, {bool? weeks, bool? days, bool? hours, bool? minutes}) {

    DateTime today = DateTime.now();
    DateTime now = this;

    if (hours == false && minutes == false) {
      today = today.startOfDay();
      now = now.startOfDay();
    }

    Duration duration = now.difference(today);

    return duration.toHumanReadable(s, showWeeks: weeks, showDays: days, showHours: hours, showMinutes: minutes);
  }
}

extension NullableDatetimeRangeExtension on NullableDateTimeRange {
  String toHumanReadable(MaterialLocalizations l, S s) {
    DateTime today = DateTime.now();

    DateTime? from = this.from;
    DateTime? to = this.to;

    String text = "";

    bool hasFrom = from != null;
    bool hasTo = to != null;

    if (hasFrom && hasTo) {
      String fromText = today.year == from.year ? l.formatShortMonthDay(from) : l.formatShortDate(from);
      String toText = today.year == to.year ? l.formatShortMonthDay(to) : l.formatShortDate(to);

      text = s.from_date(fromText);
      text += " ";
      text += s.until_date(toText);
    } else if (hasFrom) {
      String fromText = today.year == from.year ? l.formatShortMonthDay(from) : l.formatShortDate(from);
      text = s.start_at_date(fromText);
    } else if (hasTo) {
      String toText = today.year == to.year ? l.formatShortMonthDay(to) : l.formatShortDate(to);
      text += s.end_at_date(toText);
    }

    return text;
  }
}

extension DurationExtension on Duration {
  String toHumanReadable(S s, {bool? showWeeks, bool? showDays, bool? showHours, bool? showMinutes}) {
    showWeeks ??= true;
    showDays ??= true;
    showHours ??= true;
    showMinutes ??= true;

    assert(showWeeks || showDays || showHours || showMinutes,
        "At least one of 'weeks', 'days', 'hours', 'minutes' must be true");

    int days = inDays;
    int weeks = days ~/ 7;

    if ((showWeeks && weeks != 0) || (!showDays && !showHours && !showMinutes)) return localizeWeeks(weeks, s);
    if ((showDays && days != 0) || (!showHours && !showMinutes)) return localizeDays(days, s);

    int hours = inHours;
    if ((showHours && hours != 0) || !showMinutes) return localizeHours(hours, s);

    int minutes = inMinutes;

    return localizeMinutes(minutes, s);
  }

  String localizeWeeks(int weeks, S s) {
    if (weeks < 0) {
      return s.before_x_weeks(-weeks);
    } else {
      return s.in_x_weeks(weeks);
    }
  }

  String localizeDays(int days, S s) {
    if (days < 0) {
      return s.before_x_days(-days);
    } else {
      return s.in_x_days(days);
    }
  }

  String localizeHours(int hours, S s) {
    if (hours < 0) {
      return s.before_x_hours(-hours);
    } else {
      return s.in_x_hours(hours);
    }
  }

  String localizeMinutes(int minutes, S s) {
    if (minutes < 0) {
      return s.before_x_minutes(-minutes);
    } else {
      return s.in_x_minutes(minutes);
    }
  }
}
