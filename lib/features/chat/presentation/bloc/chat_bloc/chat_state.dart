part of 'chat_bloc.dart';

@freezed
abstract class ChatState with _$ChatState {
  
  factory ChatState({ 
        UserEntity? sender,
        UserEntity? receiver,
        @Default('') String newMessage,
        @Default('') String conversationId,
      
        @Default([]) List<ChatMessageEntity> chatMessages,
        @Default(ExceptionStatus.initail) ExceptionStatus exception 
  })= _ChatState;

}
   