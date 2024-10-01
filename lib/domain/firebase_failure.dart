import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:greg_sausage_roll/domain/failure.dart';

part 'firebase_failure.freezed.dart';

@freezed
class FirebaseFailure with _$FirebaseFailure implements Failure {
  const factory FirebaseFailure.unexpected() = _Unexpected;

  const factory FirebaseFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory FirebaseFailure.unableToUpdate() = _UnableToUpdate;

  const factory FirebaseFailure.alreadyExists() = _AlreadyExists;

  const factory FirebaseFailure.unableToDelete() = _UnableToDelete;

  const factory FirebaseFailure.doesNotExist() = _DoesNotExist;
}
