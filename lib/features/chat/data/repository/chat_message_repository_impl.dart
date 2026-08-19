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

  @override
  Future<UserEntity?> getSender({
       String? userId
  })async{

        final model = await _chatDataSource.getCurrentUser();
        if(model == null) return null;
        return model.toEntity();
  }

  @override
  Future<void> sndMessage({required ChatMessage newMessage}){
     return _chatDataSource.sndNewMessage(data: newMessage.toJson());
  }

  @override
  Stream<List<ChatMessageEntity>> listenToChat({required String chatId}) {
    return _chatDataSource
        .listenToChat(chatId: chatId, orderBy: 'timeStamp')
        .map(
          (messages) => messages.map((message) => message.toEntitiy()).toList(),
        );
  }
}
