import 'package:bloc/bloc.dart';
import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:chat_app/features/auth/domain/entities/user_entity.dart';
import 'package:chat_app/features/chat/data/modal/message_model/message_model.dart';
import 'package:chat_app/features/chat/domain/entities/chat_message_entity.dart';
import 'package:chat_app/features/chat/domain/use-cases/chat_listen_use_case.dart';
import 'package:chat_app/features/chat/domain/use-cases/get_sender_use_case.dart';
import 'package:chat_app/features/chat/domain/use-cases/send_message_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  
  final SendMessageUseCase _sendMessageUseCase;
  final ChatListenUseCase _chatListenUseCase;
  final GetSenderUseCase _getSenderUseCase;
  final msgId = Uuid();

  ChatBloc({
    required this._chatListenUseCase,
    required this._sendMessageUseCase,
    required this._getSenderUseCase
  }) : super(ChatState()) {
    on<Intailization>(_onIntalization);
    on<LoadMessages>(_onLoadMessages);
    on<AddMessage>(_onAddNewMessage);
    on<SetMessage>(_onSetMessage);
  }


 void _onIntalization(Intailization event,Emitter<ChatState> emit) async{
           
           try{
           
           final UserEntity? sender = await _getSenderUseCase.call();

           if(sender==null) throw Exception('No sender found!');
           
           final receiver = event.receiver;

           final conversationId = '${sender.currentUser}_${receiver.currentUser}';

           emit(state.copyWith(receiver: receiver,sender: sender,conversationId: conversationId));
           }
           catch(e){
               emit(state.copyWith(exception: ExceptionStatus.error));
           }
          
 }

 void _onLoadMessages(LoadMessages event,Emitter<ChatState> emit)async{
        
       await emit.forEach(
        _chatListenUseCase.call(chatId: state.conversationId), 
        onData: (messages) {
            print(messages);
             return state.copyWith(chatMessages: messages);
        },
        onError: (error, stackTrace) {
             print(error);
             print(stackTrace);
              return state.copyWith(exception: ExceptionStatus.error);
        });

 }
  
  void _onSetMessage(SetMessage event,Emitter<ChatState> emit){
          emit(
            state.copyWith(
              newMessage: event.newMessage
            )
          );
  }
  
  void _onAddNewMessage(AddMessage event,Emitter<ChatState> emit)async{

     
      final senderId = state.sender!.currentUser;
      final receiverId = state.receiver!.currentUser;

     
      ChatMessage message = ChatMessage(
        msgId: msgId.v4(), 
        isMe: true, 
        message: state.newMessage, 
        senderId: senderId, 
        receiverId: receiverId, 
        timeStamp: DateTime.now()
      );

      emit(
        state.copyWith(
          chatMessages: List.from([... state.chatMessages,message]),
          )
      );

      await _sendMessageUseCase.call(newMessage: message.copyWith(messageStatus: MessageStatus.sent));

  }

}
