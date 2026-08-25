import 'package:chat_app/core/config/permissions/permission_services_impl.dart';
import 'package:chat_app/dependencies/service-loader/injection.dart';
import 'package:chat_app/features/auth/domain/entities/user_entity.dart';
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
  final PermissionServices _permissionServices = PermissionServices();

  final UserEntity receiver = UserEntity(
    userName: 'Umar Mujtaba',
    email: 'omarmujtaba@gmail.com',
    fcmToken:
      'ci2YSloWTFabKlU3q2RBaj:APA91bFBPf2ouMIHA24nMv0ko_RGDFLK1cMB9dCkPLFl9hMVxPOYan49imkWmnO8yK94iPvp1JP0NgDolUAtYJlE3XZ8MmYxZrx4C6wkxdzLEff11_SSF8w',
           currentUser: 'LKoIpNWUD5OyvKffP9oiX8Wv58m2',
  );

  @override
  void initState() {
    super.initState();
    _chatBloc = getIt<ChatBloc>()
      ..add(ChatEvent.initailize(receiver: receiver));
    _permissionServices.notificationPermission();
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
        create: (context) => _chatBloc..add(ChatEvent.onLoadChat()),
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
