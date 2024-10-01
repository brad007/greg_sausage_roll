import 'package:fpdart/fpdart.dart';
import 'package:greg_sausage_roll/domain/value_objects/value_failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<num>, num> validateNumber(num number) {
  if (number < 0) {
    return left(
      ValueFailure.cannotBeNegative(failedValue: number),
    );
  } else {
    return right(number);
  }
}
