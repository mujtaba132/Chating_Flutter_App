import 'package:chat_app/features/auth/domain/entities/user_entity.dart';
import 'package:chat_app/features/chat/domain/repository/chat_messages_repository.dart';

class GetSenderUseCase {
     
     final ChatMessagesRepository _chatMessagesRepository;
     GetSenderUseCase({required this._chatMessagesRepository});

     Future<UserEntity?> call(){
          return _chatMessagesRepository.getSender();   
     }  

}