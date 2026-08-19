import 'package:chat_app/features/chat/domain/entities/chat_message_entity.dart';
import 'package:chat_app/features/chat/presentation/widgets/message/status.dart';
import 'package:flutter/material.dart';

Widget chatMessageItem(
  BuildContext context,
  ChatMessageEntity chat,
) {
  final screenWidth = MediaQuery.sizeOf(context).width;

  return Align(
    alignment:
        chat.isMe ? Alignment.centerRight : Alignment.centerLeft,
    child: Container(
      constraints: BoxConstraints(
        maxWidth: screenWidth * 0.78,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      padding: const EdgeInsets.fromLTRB(
        12,
        8,
        8,
        6,
      ),
      decoration: BoxDecoration(
        color: chat.isMe
            ? const Color(0xFFE7FFDB)
            : Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(12),
          topRight: const Radius.circular(12),
          bottomLeft: Radius.circular(chat.isMe ? 12 : 2),
          bottomRight: Radius.circular(chat.isMe ? 2 : 12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          // Message
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              chat.message,
              style: const TextStyle(
                fontSize: 15,
                height: 1.3,
              ),
            ),
          ),

          const SizedBox(height: 3),

          // Time + status
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                chat.getMessageTime,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey.shade600,
                ),
              ),

              if (chat.isMe) ...[
                const SizedBox(width: 4),
                     statusIcon(chat.messageStatus!),
              ],
            ],
          ),
        ],
      ),
    ),
  );
}