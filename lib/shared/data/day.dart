import "../../generated/l10n.dart";
import "../logic/localizable.dart";

enum Day implements Localizable<String>, Comparable<Day> {
  MONDAY(DateTime.monday),
  TUESDAY(DateTime.tuesday),
  WEDNESDAY(DateTime.wednesday),
  THURSDAY(DateTime.thursday),
  FRIDAY(DateTime.friday),
  SATURDAY(DateTime.saturday),
  SUNDAY(DateTime.sunday);

  const Day(this.weekday);

  final int weekday;

  static Day? fromWeekday(int weekday) {
    for (var day in values) {
      if (day.weekday == weekday) return day;
    }

    return null;
  }

  static Day fromIndex(int index) => values[index];

  static Day? fromIndexOrNull(int index) => index >= values.length ? null : values[index];

  static Day now() => fromWeekday(DateTime.now().weekday)!;

  @override
  String localize(S s) {
    switch (this) {
      case MONDAY:
        return s.monday;
      case TUESDAY:
        return s.tuesday;
      case WEDNESDAY:
        return s.wednesday;
      case THURSDAY:
        return s.thursday;
      case FRIDAY:
        return s.friday;
      case SATURDAY:
        return s.saturday;
      case SUNDAY:
        return s.sunday;
    }
  }

  String localizeShort(S s) {
    switch (this) {
      case MONDAY:
        return s.monday_short;
      case TUESDAY:
        return s.tuesday_short;
      case WEDNESDAY:
        return s.wednesday_short;
      case THURSDAY:
        return s.thursday_short;
      case FRIDAY:
        return s.friday_short;
      case SATURDAY:
        return s.saturday_short;
      case SUNDAY:
        return s.sunday_short;
    }
  }

  @override
  int compareTo(Day day) => index.compareTo(day.index);

  static int comparator(Day a, Day b) => a.compareTo(b);
}
