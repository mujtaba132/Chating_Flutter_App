import 'package:chat_app/core/backend/services/firebase-service/cloud_firestore/cloud_service/cloud_firestore_service.dart';
import 'package:chat_app/core/backend/services/firebase-service/cloud_messages/cloud_messaging_platform.dart';
import '../../../../core/backend/services/firebase-service/cloud_firestore/cloud_collections/collections.dart';

class FirestoreDataSource {
  final CloudFirestoreService _cloudFirestoreService;
  final CloudMessagingPlatform _cloudMessagingPlatform;

  FirestoreDataSource({
    required this._cloudFirestoreService,
    required this._cloudMessagingPlatform,
  });

  //Get the user FCM Token
  Future<String> getFCMToken() async {
    String? token = await _cloudMessagingPlatform.getFCMToken();

    if (token == null) return '';
    return token;
  }

  //Add User to Firebase
  Future<void> addUserToDataBase({
    required String documentId,
    required Map<String, dynamic> data,
  }) {
    final docRefs = _cloudFirestoreService.getDocumentRef(
      collection: Collection.user,
      documentId: documentId,
    );
    return _cloudFirestoreService.setData(docRefs: docRefs, data: data);
  }

  //Get User from Firebase
  Future<Map<String, dynamic>?> getUserFromDataBase({
    required String documentId,
  }) async {
    final docRefs = _cloudFirestoreService.getDocumentRef(
      collection: Collection.user,
      documentId: documentId,
    );

    return _cloudFirestoreService.getData(docRefs: docRefs);
  }

  //Update User in Firebase
  Future<void> updateUserInFirebase({
    required String documentId,
    required Map<String, dynamic> data,
  }) {
    final docRefs = _cloudFirestoreService.getDocumentRef(
      collection: Collection.user,
      documentId: documentId,
    );
    return _cloudFirestoreService.updateData(docRefs: docRefs, data: data);
  }

}
