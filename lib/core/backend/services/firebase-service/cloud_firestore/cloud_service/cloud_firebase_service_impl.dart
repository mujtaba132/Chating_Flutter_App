import 'package:chat_app/core/backend/services/firebase-service/cloud_firestore/cloud_service/cloud_firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFirebaseServiceImpl implements CloudFirestoreService {
  final FirebaseFirestore _firebaseFirestore;

  CloudFirebaseServiceImpl({required this._firebaseFirestore});

  //Add data
  @override
  Future<void> addData({
    required String collection,
    required Map<String, dynamic> data,
  }) async {
    await _firebaseFirestore.collection(collection).add(data);
  }

  //Delete data
  @override
  Future<void> deleteData({
    required String collection,
    required String documentId,
  }) async {
    await _firebaseFirestore.collection(collection).doc(documentId).delete();
  }

  //Get data
  @override
  Future<Map<String, dynamic>?> getData({
    required String collection,
    required String documentId,
  }) async {
    final snapshot = await _firebaseFirestore
        .collection(collection)
        .doc(documentId)
        .get();

    if (!snapshot.exists) {
      return null;
    }

    return snapshot.data();
  }

  //Set data
  @override
  Future<void> setData({
    required String collection,
    required String documentId,
    required Map<String, dynamic> data,
    bool merge = true,
  }) async {
    await _firebaseFirestore
        .collection(collection)
        .doc(documentId)
        .set(data, SetOptions(merge: merge));
  }

  //Update data
  @override
  Future<void> updateData({
    required String collection,
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    await _firebaseFirestore
        .collection(collection)
        .doc(documentId)
        .update(data);
  }

  @override
  Stream<List<Map<String, dynamic>>> watchCollection({
    required String collection,
  }) {
    return _firebaseFirestore
        .collection(collection)
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
  }

  @override
  Stream<Map<String, dynamic>?> watchDocument({
    required String collection,
    required String documentId,
  }) {
    return _firebaseFirestore
        .collection(collection)
        .doc(documentId)
        .snapshots()
        .map((snapshot) => snapshot.data());
  }

  @override
  Stream<List<Map<String, dynamic>>> watchNestedCollection({
    required String outterCollection,
    required String documentId,
    required String innerCollection,
    String orderBy = '',
  }) {
    if (orderBy.isEmpty) {
      return _firebaseFirestore
          .collection(outterCollection)
          .doc(documentId)
          .collection(innerCollection)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
    } else {
      return _firebaseFirestore
          .collection(outterCollection)
          .doc(documentId)
          .collection(innerCollection)
          .orderBy(orderBy)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
    }
  }
}
