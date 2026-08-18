import 'package:chat_app/features/chat/presentation/bloc/chat_bloc/chat_bloc.dart';
import 'package:chat_app/features/chat/presentation/widgets/bloc_components/chat_list_builder.dart';
import 'package:chat_app/features/chat/presentation/widgets/bloc_components/chat_send_layer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late ChatBloc _chatBloc;
  final TextEditingController messageController = TextEditingController();
  

  @override
  void initState() {
    super.initState();
    _chatBloc = ChatBloc();

  }

  @override
  void dispose() {
    _chatBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
      create: (context) => _chatBloc,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(2),
            child: Column(
              children: [

                //Chat List
                ChatListBuilder(),

                //Bottom textFeld and send button
                ChatSendLayer(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
