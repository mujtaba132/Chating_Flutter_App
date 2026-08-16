import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
abstract class ChatMessage with _$ChatMessage {
  const ChatMessage._();

  const factory ChatMessage({
    required String msgId,
    required bool isMe,
    required String message,
    required String senderId,
    required String receiverId,
    required DateTime timeStamp,

    @Default(MessageStatus.pending)
    MessageStatus? messageStatus,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  String get getMessageDate =>
      DateFormat('dd-MM-yyyy').format(timeStamp);

  String get getMessageTime =>
      DateFormat('HH:mm').format(timeStamp);
}
