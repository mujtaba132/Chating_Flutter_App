// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => _ChatMessage(
  msgId: json['msgId'] as String,
  message: json['message'] as String,
  senderId: json['senderId'] as String,
  receiverId: json['receiverId'] as String,
  timeStamp: DateTime.parse(json['timeStamp'] as String),
  messageStatus:
      $enumDecodeNullable(_$MessageStatusEnumMap, json['messageStatus']) ??
      MessageStatus.pending,
);

Map<String, dynamic> _$ChatMessageToJson(_ChatMessage instance) =>
    <String, dynamic>{
      'msgId': instance.msgId,
      'message': instance.message,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'timeStamp': instance.timeStamp.toIso8601String(),
      'messageStatus': _$MessageStatusEnumMap[instance.messageStatus],
    };

const _$MessageStatusEnumMap = {
  MessageStatus.pending: 'pending',
  MessageStatus.sent: 'sent',
  MessageStatus.delivered: 'delivered',
  MessageStatus.read: 'read',
};
