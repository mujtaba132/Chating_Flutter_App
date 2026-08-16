import 'package:chat_app/core/ui/chat_text_feild.dart';
import 'package:chat_app/features/chat/presentation/bloc/chat_bloc/chat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatSendLayer extends StatelessWidget {
  final TextEditingController _messageController = TextEditingController();
  ChatSendLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              //Chat text feild
              Expanded(
                child: CustomTextField(
                  controller: _messageController,
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.emoji_emotions_outlined),
                  ),
                  onChanged: (value) {
                    context.read<ChatBloc>().add(
                      ChatEvent.setNewMessage(newMessage: value),
                    );
                  },
                ),
              ),

              const SizedBox(width: 8),

              //Chat send btn
              CircleAvatar(
                radius: 24,
                child: IconButton(
                  onPressed: () {
                    _messageController.clear();
                    context.read<ChatBloc>().add(AddMessage());
                  },
                  icon: const Icon(Icons.send_rounded),
                ),
              )
           
               
              
            ],
          ),
        );
      },
    );
  }
}
