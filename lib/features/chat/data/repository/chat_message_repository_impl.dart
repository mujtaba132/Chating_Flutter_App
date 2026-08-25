import 'package:chat_app/features/auth/data/mapper/user_mapper.dart';
import 'package:chat_app/features/auth/domain/entities/user_entity.dart';
import 'package:chat_app/features/chat/data/data-source/chat_data_source.dart';
import 'package:chat_app/features/chat/data/mappers/chat_message_mapper.dart';
import 'package:chat_app/features/chat/data/modal/message_model/message_model.dart';
import 'package:chat_app/features/chat/domain/entities/chat_message_entity.dart';
import 'package:chat_app/features/chat/domain/repository/chat_messages_repository.dart';

class ChatMessageRepositoryImpl implements ChatMessagesRepository {
  final ChatDataSource _chatDataSource;

  ChatMessageRepositoryImpl({required this._chatDataSource});
  

  //get sender 
  @override
  Future<UserEntity?> getSender({String? userId}) async {
    final model = await _chatDataSource.getCurrentUser();
    if (model == null) return null;
    return model.toEntity();
  }

  //snd msg to user
  @override
  Future<void> sndMessage({
    required ChatMessage newMessage,
    required String chatId,
    required Map<String, dynamic> lastMessage,
  }) {
    return _chatDataSource.sndNewMessage(
      message: newMessage.toFirebase(),
      conversationId: chatId,
      lastMessage: lastMessage,
    );
  }

  //listen to the chats
  @override
  Stream<List<ChatMessageEntity>> listenToChat({required String chatId}) {
    return _chatDataSource
        .listenToChat(conversationId: chatId, orderBy: 'timeStamp')
        .map(
          (messages) => messages.map((message) => message.toEntitiy()).toList(),
        );
  }
}
