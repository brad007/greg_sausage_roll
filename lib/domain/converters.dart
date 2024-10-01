import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:greg_sausage_roll/domain/value_objects/number.dart';
import 'package:greg_sausage_roll/domain/value_objects/value_string.dart';

class DateTimeConverter extends JsonConverter<Option<DateTime>, String?> {
  const DateTimeConverter();

  @override
  Option<DateTime> fromJson(String? json) {
    return json != null ? some(DateTime.parse(json)) : none();
  }

  @override
  String? toJson(Option<DateTime> object) {
    return object.fold(
      () => null,
      (a) => a.toIso8601String(),
    );
  }
}

class ValueStringConverter extends JsonConverter<Option<ValueString>, String?> {
  const ValueStringConverter();

  @override
  Option<ValueString> fromJson(String? json) {
    return json != null ? some(ValueString.fromString(some(json))) : none();
  }

  @override
  String? toJson(Option<ValueString> object) {
    return object.fold(
      () => null,
      (a) => a.safeValue,
    );
  }
}

class ListValueStringConverter
    extends JsonConverter<Option<List<ValueString>>, List<String>?> {
  const ListValueStringConverter();

  @override
  Option<List<ValueString>> fromJson(List<String>? json) {
    return json != null
        ? some(json.map((e) => ValueString.fromString(some(e))).toList())
        : none();
  }

  @override
  List<String>? toJson(Option<List<ValueString>> object) {
    return object.fold(
      () => null,
      (a) => a.map((e) => e.safeValue).toList(),
    );
  }
}

class NumberConverter extends JsonConverter<Option<Number>, double?> {
  const NumberConverter();

  @override
  Option<Number> fromJson(double? json) {
    return json != null ? some(Number(some(json))) : none();
  }

  @override
  double? toJson(Option<Number> object) {
    return object.fold(
      () => null,
      (a) => a.safeValue as double,
    );
  }
}
