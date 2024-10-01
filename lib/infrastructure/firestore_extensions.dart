import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:greg_sausage_roll/domain/sausage/models/sausage_model.dart';

extension FirebaseExtensions on FirebaseFirestore {
  CollectionReference<SausageModel> get sausagesCollection {
    return collection('sausages').withConverter(
      fromFirestore: (
        snapshot,
        _,
      ) =>
          SausageModel.fromJson(snapshot.data()!),
      toFirestore: (
        sausage,
        _,
      ) =>
          sausage.toJson(),
    );
  }
}
