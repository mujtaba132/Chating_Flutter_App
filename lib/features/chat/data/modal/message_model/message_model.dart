import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:chat_app/dependencies/service-loader/file_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
abstract class ChatMessage with _$ChatMessage {
  const ChatMessage._();

  const factory ChatMessage({
    required String msgId,
    required String message,
    required String senderId,
    required String receiverId,
    required DateTime timeStamp,

    @Default(MessageStatus.pending) MessageStatus? messageStatus,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  factory ChatMessage.fromFirebase(Map<String, dynamic> json) {
    return ChatMessage(
      msgId: json['msgId'],
      message: json['message'],
      senderId: json['senderId'],
      receiverId: json['receiverId'],
      timeStamp: (json["timeStamp"] as Timestamp).toDate(),
      messageStatus: MessageStatus.values.firstWhere(
      (status) => status.name == json['messageStatus'],
      orElse: () => MessageStatus.sent,
    ),
    );
  }

  Map<String, dynamic> toFirebase() {
    return {
      'msgId': msgId,
      'message': message,
      'senderId': senderId,
      'receiverId': receiverId,
      'timeStamp': Timestamp.fromDate(timeStamp),
      'messageStatus': messageStatus?.name,
    };
  }

  String get getMessageDate => DateFormat('dd-MM-yyyy').format(timeStamp);

  String get getMessageTime => DateFormat('HH:mm').format(timeStamp);
}
