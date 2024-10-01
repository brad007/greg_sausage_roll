import 'package:fpdart/fpdart.dart';
import 'package:greg_sausage_roll/domain/failure.dart';

typedef NetworkResponse<T> = TaskEither<Failure, T>;
