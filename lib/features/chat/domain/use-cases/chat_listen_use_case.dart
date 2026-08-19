import 'package:chat_app/features/chat/domain/entities/chat_message_entity.dart';
import 'package:chat_app/features/chat/domain/repository/chat_messages_repository.dart';

class ChatListenUseCase {
     
     final ChatMessagesRepository _chatMessagesRepository;
     ChatListenUseCase({required this._chatMessagesRepository});

     Stream<List<ChatMessageEntity>> call({
        required String chatId
     }){
          return _chatMessagesRepository.listenToChat(chatId: chatId);   
     }  
}