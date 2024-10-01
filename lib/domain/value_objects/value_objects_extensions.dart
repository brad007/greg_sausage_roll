import 'package:fpdart/fpdart.dart';
import 'package:greg_sausage_roll/domain/value_objects/number.dart';
import 'package:greg_sausage_roll/domain/value_objects/value_string.dart';

extension ValueStringExtensions on String {
  ValueString toValueString() => ValueString.fromString(some(this));
}

extension NumberExtensions on double {
  Number toNumber() => Number(some(this));
}

extension ValueObjectsExtensions<T> on T {
  Option<T> toOption() => optionOf(this);
}
