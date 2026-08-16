part of 'chat_bloc.dart';

@freezed
abstract class ChatState with _$ChatState {
  
  const factory ChatState({
        @Default([]) List<ChatMessage> chatMessages,
        @Default('') String newMessage,
        @Default(ExceptionStatus.initail) ExceptionStatus exception 
  })= _ChatState;

}
