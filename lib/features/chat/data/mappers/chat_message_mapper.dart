import 'package:chat_app/features/chat/domain/entities/chat_message_entity.dart';

import '../modal/message_model/message_model.dart';

extension ChatMessageMapper on ChatMessage{
       
       ChatMessageEntity toEntitiy(){
             
             return ChatMessageEntity(
              messageStatus: messageStatus!,
              messsageId: msgId, 
              message: message, 
              receiverId: receiverId, 
              senderId: senderId, 
              isMe: isMe, 
              timeStamp: timeStamp);
       }
       
}