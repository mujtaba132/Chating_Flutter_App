import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:intl/intl.dart';

class ChatMessageEntity {
  final String messsageId;
  final String message;
  final String receiverId;
  final String senderId;
  final MessageStatus messageStatus;
  final DateTime timeStamp;

  ChatMessageEntity({
    required this.messsageId,
    required this.message,
    required this.receiverId,
    required this.senderId,
    required this.messageStatus,
    required this.timeStamp,
  });

  String get getMessageDate =>
      DateFormat('dd-MM-yyyy').format(timeStamp);

  String get getMessageTime =>
      DateFormat('HH:mm').format(timeStamp);
}
