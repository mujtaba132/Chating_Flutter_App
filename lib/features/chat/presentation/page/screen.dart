import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:chat_app/features/chat/data/modal/message_model/message_model.dart';
import 'package:flutter/material.dart';

class ScreenPage extends StatelessWidget {
  String id;
  ScreenPage({super.key,required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Screen ID $id'),
      ),
    );
  }
}

final List<ChatMessage> dummyMessages = [
  ChatMessage(
    msgId: '1',
    isMe: false,
    message: 'Hey! How are you?',
    senderId: 'user_2',
    receiverId: 'user_1',
    timeStamp: DateTime(2024, 2, 10, 10, 15),
    messageStatus: MessageStatus.read,
  ),

  ChatMessage(
    msgId: '2',
    isMe: true,
    message: 'I am good! How about you?',
    senderId: 'user_1',
    receiverId: 'user_2',
    timeStamp: DateTime(2024, 2, 10, 10, 16),
    messageStatus: MessageStatus.read,
  ),

  ChatMessage(
    msgId: '3',
    isMe: false,
    message: 'I am doing great too.',
    senderId: 'user_2',
    receiverId: 'user_1',
    timeStamp: DateTime(2024, 2, 10, 10, 17),
    messageStatus: MessageStatus.read,
  ),

  ChatMessage(
    msgId: '4',
    isMe: true,
    message: 'That is good to hear!',
    senderId: 'user_1',
    receiverId: 'user_2',
    timeStamp: DateTime(2024, 2, 10, 10, 18),
    messageStatus: MessageStatus.delivered,
  ),

  ChatMessage(
    msgId: '5',
    isMe: false,
    message: 'Are you working on the Flutter project today?',
    senderId: 'user_2',
    receiverId: 'user_1',
    timeStamp: DateTime(2024, 2, 10, 10, 20),
    messageStatus: MessageStatus.read,
  ),

  ChatMessage(
    msgId: '6',
    isMe: true,
    message:
        'Yes, I am currently working on the chat screen. I am trying to make the message bubbles responsive on different screen sizes.',
    senderId: 'user_1',
    receiverId: 'user_2',
    timeStamp: DateTime(2024, 2, 10, 10, 22),
    messageStatus: MessageStatus.sent,
  ),

  ChatMessage(
    msgId: '7',
    isMe: false,
    message: 'Nice! That sounds interesting 👍',
    senderId: 'user_2',
    receiverId: 'user_1',
    timeStamp: DateTime(2024, 2, 10, 10, 25),
    messageStatus: MessageStatus.read,
  ),

  ChatMessage(
    msgId: '8',
    isMe: true,
    message: 'Thanks!',
    senderId: 'user_1',
    receiverId: 'user_2',
    timeStamp: DateTime(2024, 2, 10, 10, 26),
    messageStatus: MessageStatus.delivered,
  ),

  ChatMessage(
    msgId: '9',
    isMe: false,
    message:
        'Can you send me the latest version when you finish it?',
    senderId: 'user_2',
    receiverId: 'user_1',
    timeStamp: DateTime(2024, 2, 10, 10, 28),
    messageStatus: MessageStatus.read,
  ),

  ChatMessage(
    msgId: '10',
    isMe: true,
    message:
        'Sure, I will send it to you as soon as I finish testing everything.',
    senderId: 'user_1',
    receiverId: 'user_2',
    timeStamp: DateTime(2024, 2, 10, 10, 30),
    messageStatus: MessageStatus.pending,
  ),

  ChatMessage(
    msgId: '11',
    isMe: false,
    message: 'Perfect 👌',
    senderId: 'user_2',
    receiverId: 'user_1',
    timeStamp: DateTime(2024, 2, 10, 10, 32),
    messageStatus: MessageStatus.read,
  ),

  // Very long message for testing responsive UI
  ChatMessage(
    msgId: '12',
    isMe: true,
    message:
        'This is a very long message that I am using to test whether my chat bubble correctly wraps the text and remains responsive when the screen width becomes smaller. It should never overflow outside the screen.',
    senderId: 'user_1',
    receiverId: 'user_2',
    timeStamp: DateTime(2024, 2, 10, 10, 35),
    messageStatus: MessageStatus.read,
  ),

  // Very short message
  ChatMessage(
    msgId: '13',
    isMe: false,
    message: 'Okay 👍',
    senderId: 'user_2',
    receiverId: 'user_1',
    timeStamp: DateTime(2024, 2, 10, 10, 36),
    messageStatus: MessageStatus.read,
  ),

  ChatMessage(
    msgId: '14',
    isMe: true,
    message: 'See you later!',
    senderId: 'user_1',
    receiverId: 'user_2',
    timeStamp: DateTime(2024, 2, 10, 10, 40),
    messageStatus: MessageStatus.read,
  ),
];