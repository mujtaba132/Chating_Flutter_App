import 'package:chat_app/features/chat/data/modal/message_model/message_model.dart';
import 'package:chat_app/features/chat/domain/repository/chat_messages_repository.dart';

class SendMessageUseCase {
     
     final ChatMessagesRepository _chatMessagesRepository;
     SendMessageUseCase({required this._chatMessagesRepository});

     Future<void> call({
        required ChatMessage newMessage
     }){
          return _chatMessagesRepository.sndMessage(newMessage: newMessage);   
     }  

}