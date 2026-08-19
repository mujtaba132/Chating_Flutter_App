import 'package:chat_app/core/backend/services/firebase-service/cloud_firestore/cloud_collections/collections.dart';
import 'package:chat_app/dependencies/service-loader/file_exports.dart';
import 'package:chat_app/features/auth/data/model/user_model.dart';
import 'package:chat_app/features/chat/data/modal/message_model/message_model.dart';


class ChatDataSource {
  final CloudFirestoreService _cloudFirestoreService;
  final FirebaseAuthService _firebaseAuthService;

  ChatDataSource({required this._cloudFirestoreService,required this._firebaseAuthService});

  //Get user as by default get the current user 
  Future<UserModel?> getCurrentUser() async {
   
   User? user = _firebaseAuthService.currentUser;

    if (user == null) {
      return null;
    }

    final userModel = UserModel.fromFirebase(user);

    return userModel;
  }

  //Add data
  Future<void> sndNewMessage({required Map<String, dynamic> data}) {
    return _cloudFirestoreService.addData(
      collection: Collection.chats,
      data: data,
    );
  }

  //Listen to the chat
  Stream<List<ChatMessage>> listenToChat({
    required String chatId,
    required String orderBy,
  }) {
    return _cloudFirestoreService
        .watchNestedCollection(
          outterCollection: Collection.chats,
          documentId: chatId,
          innerCollection: Collection.messages,
          orderBy: orderBy,
        )
        .map(
          (chatMessages) => chatMessages
              .map((message) => ChatMessage.fromFirebase(message))
              .toList(),
        );
  }
}
