import 'package:chat_app/features/auth/domain/entities/user_entity.dart';
import 'package:chat_app/features/chat/data/modal/message_model/message_model.dart';
import 'package:chat_app/features/chat/domain/entities/chat_message_entity.dart';

abstract interface class ChatMessagesRepository {

  //get user from firebase
  Future<UserEntity?> getSender();

  //snd new message to firebase
  Future<void> sndMessage({
    required ChatMessage newMessage,
    required String chatId,
    required Map<String, dynamic> lastMessage,
  });

  //listen new messages from firebase
  Stream<List<ChatMessageEntity>> listenToChat({required String chatId});
  
}
