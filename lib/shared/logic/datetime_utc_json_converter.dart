import "package:freezed_annotation/freezed_annotation.dart";

class DateTimeUtcJsonConverter extends JsonConverter<DateTime, String> {

  const DateTimeUtcJsonConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json).toLocal();
  }

  @override
  String toJson(DateTime object) {
    return object.toUtc().toIso8601String();
  }
}
