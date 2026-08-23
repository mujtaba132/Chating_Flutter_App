import 'package:chat_app/core/backend/services/firebase-service/cloud_firestore/cloud_collections/collections.dart';
import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:chat_app/dependencies/service-loader/file_exports.dart';
import 'package:chat_app/features/auth/data/model/user_model.dart';
import 'package:chat_app/features/chat/data/modal/message_model/message_model.dart';

class ChatDataSource {
  final CloudFirestoreService _cloudFirestoreService;
  final FirebaseAuthService _firebaseAuthService;

  ChatDataSource({
    required this._cloudFirestoreService,
    required this._firebaseAuthService,
  });

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
  Future<void> sndNewMessage({
    required String conversationId,
    required Map<String, dynamic> lastMessage,
    required Map<String, dynamic> message,
  }) async {
    final docRefs = _cloudFirestoreService.getDocumentRef(
      collection: Collection.chats,
      documentId: conversationId,
    );

    final nestedDocRefs = _cloudFirestoreService.getNestedDocumentRef(
      outterDocRefs: docRefs,
      innerCollection: Collection.messages,
      innerDocumentId: message['msgId'],
    );

    await _cloudFirestoreService.setData(docRefs: docRefs, data: lastMessage);

    await _cloudFirestoreService.setData(docRefs: nestedDocRefs, data: message);
  }

  //Listen to the chat
  Stream<List<ChatMessage>> listenToChat({
  required String conversationId,
  required String orderBy,
}) {
  final docRefs = _cloudFirestoreService.getDocumentRef(
    collection: Collection.chats,
    documentId: conversationId,
  );

  final collectionRefs =
      _cloudFirestoreService.getNestedCollectionRef(
    outterDocRefs: docRefs,
    innerCollection: Collection.messages,
  );

  return _cloudFirestoreService
      .watchCollection(
        collectionRefs: collectionRefs,
        orderBy: 'timeStamp',
      )
      .asyncMap((chatMessages) async {
        for (final message in chatMessages) {
          final receiverId = message['receiverId'];
          final status = message['messageStatus'];
          final messageId = message['msgId'];
          final currentUser = await getCurrentUser();

          if (receiverId == currentUser!.userId &&
              status == MessageStatus.sent.name) {
            
            await markMessageAsRead(
              conversationId: conversationId,
              messageId: messageId,
            );
          }
        }

        return chatMessages
            .map((message) => ChatMessage.fromFirebase(message))
            .toList();
      });
}

  Future<void> markMessageAsRead({
    required String conversationId,
    required String messageId,
  }) async {

    final chatRef = _cloudFirestoreService.getDocumentRef(
      collection: Collection.chats,
      documentId: conversationId,
    );

    final messagesRef = _cloudFirestoreService.getNestedDocumentRef(
      outterDocRefs: chatRef,
      innerCollection: Collection.messages,
      innerDocumentId: messageId,
    );

    await messagesRef.update({'messageStatus': MessageStatus.read.name});
  }

}
