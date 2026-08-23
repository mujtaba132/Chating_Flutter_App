import 'package:chat_app/core/backend/services/firebase-service/cloud_firestore/cloud_service/cloud_firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFirebaseServiceImpl implements CloudFirestoreService {

  final FirebaseFirestore _firebaseFirestore;

  CloudFirebaseServiceImpl({required this._firebaseFirestore});

  
  //Get single collection  ref
  @override
  CollectionReference<Map<String, dynamic>> getCollectionRef({
    required String collection,
  }) {
    return _firebaseFirestore.collection(collection);
  }

  //Get  single doc ref
  @override
  DocumentReference<Map<String, dynamic>> getDocumentRef({
    required String collection,
    required String documentId,
  }) {
    return _firebaseFirestore.collection(collection).doc(documentId);
  }

  //Get nested collection refs
  @override
  CollectionReference<Map<String,dynamic>> getNestedCollectionRef({
    required DocumentReference<Map<String,dynamic>> outterDocRefs,
    required String innerCollection,
  }) {
    return outterDocRefs.collection(innerCollection);
  }

  //Get nested document refs
  @override
  DocumentReference<Map<String,dynamic>> getNestedDocumentRef({
    required DocumentReference<Map<String,dynamic>> outterDocRefs,
    required String innerCollection,
    required String innerDocumentId,
  }) {
    return outterDocRefs.collection(innerCollection).doc(innerDocumentId);
  }

  //Add data
  @override
  Future<void> addData({
    required CollectionReference collectionRefs,
    required Map<String, dynamic> data,
  }) async {
    await collectionRefs.add(data);
  }

  //Delete data
  @override
  Future<void> deleteData({required DocumentReference docRefs}) async {
    await docRefs.delete();
  }

  //Get data
  @override
  Future<Map<String, dynamic>?> getData({
    required DocumentReference<Map<String, dynamic>> docRefs,
  }) async {
    final snapshot = await docRefs.get();

    if (!snapshot.exists) {
      return null;
    }

    return snapshot.data();
  }

  //Set data
  @override
  Future<void> setData({
    required DocumentReference<Map<String, dynamic>> docRefs,
    required Map<String, dynamic> data,
    bool merge = true,
  }) async {
    await docRefs.set(data, SetOptions(merge: merge));
  }

  //Update data
  @override
  Future<void> updateData({
    required DocumentReference<Map<String, dynamic>> docRefs,
    required Map<String, dynamic> data,
  }) async {
    await docRefs.update(data);
  }

  //Listen the document to get the data at realtime
  @override
  Stream<Map<String, dynamic>?> watchDocument({
    required DocumentReference<Map<String, dynamic>> docRefs,
  }) {
    return docRefs.snapshots().map((snapshot) => snapshot.data());
  }

  //Listen the collection to get the data at realtime
  @override
  Stream<List<Map<String, dynamic>>> watchCollection({
    required CollectionReference<Map<String, dynamic>> collectionRefs,
    String orderBy = '',
  }) {
    if (orderBy.isEmpty) {
      return collectionRefs.snapshots().map(
        (snapshot) => snapshot.docs.map((doc) => doc.data()).toList(),
      );
    } else {
      return collectionRefs
          .orderBy(orderBy)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
    }
  }


}
