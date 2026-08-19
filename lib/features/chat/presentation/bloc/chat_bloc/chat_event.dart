part of 'chat_bloc.dart';

@freezed
abstract class ChatEvent with _$ChatEvent {

  const factory ChatEvent.started() = _Started;

  const factory ChatEvent.initailize({
     required UserEntity receiver
  }) = Intailization;

  const factory ChatEvent.onLoadChat() = LoadMessages;

  const factory ChatEvent.addNewMessage() = AddMessage;

  const factory ChatEvent.setNewMessage({
      required String newMessage
  }) = SetMessage;

}