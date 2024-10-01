import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:greg_sausage_roll/domain/failure.dart';
import 'package:greg_sausage_roll/domain/firebase_failure.dart';
import 'package:greg_sausage_roll/domain/network_response.dart';
import 'package:greg_sausage_roll/domain/sausage/models/sausage_model.dart';
import 'package:greg_sausage_roll/domain/sausage/sausage_facade.dart';
import 'package:greg_sausage_roll/domain/value_objects/value_string.dart';
import 'package:greg_sausage_roll/infrastructure/firestore_extensions.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: SausageFacade)
class SausageRepository implements SausageFacade {
  SausageRepository({required this.firebaseFirestore});

  final FirebaseFirestore firebaseFirestore;

  @override
  NetworkResponse<Unit> addSausage(SausageModel sausage) {
    return NetworkResponse.tryCatch(
      () async {
        await firebaseFirestore.sausagesCollection
            .doc(
              sausage.articleCode
                  .fold(() => ValueString.fromString(none()), (r) => r)
                  .safeValue,
            )
            .set(sausage);
        return unit;
      },
      (error, stacktrace) {
        if (error is PlatformException) {
          return error.code == 'permission-denied'
              ? const FirebaseFailure.insufficientPermission()
              : const FirebaseFailure.unexpected();
        } else {
          return const FirebaseFailure.unexpected();
        }
      },
    );
  }

  @override
  NetworkResponse<Unit> deleteAllSausages() {
    return NetworkResponse.tryCatch(
      () async {
        final sausages = await firebaseFirestore.sausagesCollection.get();
        for (final sausage in sausages.docs) {
          await sausage.reference.delete();
        }
        return unit;
      },
      (error, stacktrace) {
        if (error is PlatformException) {
          return error.code == 'permission-denied'
              ? const FirebaseFailure.insufficientPermission()
              : const FirebaseFailure.unexpected();
        } else {
          return const FirebaseFailure.unexpected();
        }
      },
    );
  }

  @override
  NetworkResponse<Unit> deleteSausage(Option<ValueString> articleCode) {
    return NetworkResponse.tryCatch(
      () async {
        await firebaseFirestore.sausagesCollection
            .doc(
              articleCode
                  .fold(
                    () => ValueString.fromString(none()),
                    (r) => r,
                  )
                  .safeValue,
            )
            .delete();
        return unit;
      },
      (error, stacktrace) {
        if (error is PlatformException) {
          return error.code == 'permission-denied'
              ? const FirebaseFailure.insufficientPermission()
              : const FirebaseFailure.unexpected();
        } else {
          return const FirebaseFailure.unexpected();
        }
      },
    );
  }

  @override
  NetworkResponse<Unit> deleteSausages(List<ValueString> articleCodes) {
    return NetworkResponse.tryCatch(
      () async {
        for (final articleCode in articleCodes) {
          await firebaseFirestore.sausagesCollection
              .doc(articleCode.safeValue)
              .delete();
        }

        return unit;
      },
      (error, stacktrace) {
        if (error is PlatformException) {
          return error.code == 'permission-denied'
              ? const FirebaseFailure.insufficientPermission()
              : const FirebaseFailure.unexpected();
        } else {
          return const FirebaseFailure.unexpected();
        }
      },
    );
  }

  @override
  NetworkResponse<SausageModel> getSausage(String articleCode) {
    return NetworkResponse.tryCatch(
      () async {
        final sausage =
            await firebaseFirestore.sausagesCollection.doc(articleCode).get();
        return sausage.data()!;
      },
      (error, stacktrace) {
        if (error is PlatformException) {
          return error.code == 'permission-denied'
              ? const FirebaseFailure.insufficientPermission()
              : const FirebaseFailure.unexpected();
        } else {
          return const FirebaseFailure.unexpected();
        }
      },
    );
  }

  @override
  NetworkResponse<Unit> updateSausage(SausageModel sausage) {
    return NetworkResponse.tryCatch(
      () async {
        await firebaseFirestore.sausagesCollection
            .doc(
              sausage.articleCode
                  .fold(() => ValueString.fromString(none()), (r) => r)
                  .safeValue,
            )
            .update(sausage.toJson());
        return unit;
      },
      (error, stacktrace) {
        if (error is PlatformException) {
          return error.code == 'permission-denied'
              ? const FirebaseFailure.insufficientPermission()
              : const FirebaseFailure.unexpected();
        } else {
          return const FirebaseFailure.unexpected();
        }
      },
    );
  }

  @override
  Stream<Either<Failure, List<SausageModel>>> getSausages() {
    return firebaseFirestore.sausagesCollection.snapshots().map(
          (snapshot) => right<Failure, List<SausageModel>>(
            snapshot.docs.map((doc) => doc.data()).toList(),
          ),
        );
  }
}
