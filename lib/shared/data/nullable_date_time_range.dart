import "package:flutter/foundation.dart";

@immutable
class NullableDateTimeRange {
  final DateTime? from;
  final DateTime? to;

  NullableDateTimeRange({this.from, this.to})
      : assert((from == null || to == null) || to.isAfter(from), "to must be after from");

}
