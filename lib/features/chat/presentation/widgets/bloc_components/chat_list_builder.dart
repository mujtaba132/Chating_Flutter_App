import 'package:chat_app/features/chat/domain/entities/chat_message_entity.dart';
import 'package:chat_app/features/chat/presentation/bloc/chat_bloc/chat_bloc.dart';
import 'package:chat_app/features/chat/presentation/widgets/message/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatListBuilder extends StatelessWidget {
 const ChatListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      buildWhen: (previous, current) => previous.chatMessages!=current.chatMessages,
      builder: (context, state) {
        if(state.chatMessages.isEmpty){
           return Expanded(child: SizedBox());
        }
        return Expanded(
          child: ListView.builder(
            itemCount: state.chatMessages.length,
            itemBuilder: (context, index) {
              ChatMessageEntity message = state.chatMessages[index];
              bool isMe = state.sender!.currentUser == message.senderId;

              return 
              chatMessageItem(
                context, 
                message,
                isMe
                );
            },
          ),
        );
      },
    );
  }
}
