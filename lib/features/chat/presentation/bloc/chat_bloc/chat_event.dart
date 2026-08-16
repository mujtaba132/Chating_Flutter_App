part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {

  const factory ChatEvent.started() = _Started;

  const factory ChatEvent.onLoadChat() = LoadMessages;

  const factory ChatEvent.addNewMessage() = AddMessage;

  const factory ChatEvent.setNewMessage({
      required String newMessage
  }) = SetMessage;

}