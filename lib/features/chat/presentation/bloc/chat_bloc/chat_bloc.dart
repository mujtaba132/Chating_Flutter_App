import 'package:bloc/bloc.dart';
import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:chat_app/features/chat/data/modal/message_model/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {

  ChatBloc() : super(const ChatState()) {
    on<AddMessage>(_onAddNewMessage);
    on<SetMessage>(_onSetMessage);
  }
  
  void _onSetMessage(SetMessage event,Emitter<ChatState> emit){
          emit(
            state.copyWith(
              newMessage: event.newMessage
            )
          );
  }
  
  void _onAddNewMessage(AddMessage event,Emitter<ChatState> emit){
      

      ChatMessage message = ChatMessage(
        msgId: '2', 
        isMe: true, 
        message: state.newMessage, 
        senderId: '123', 
        receiverId: '456', 
        timeStamp: DateTime.now()
      );

      

      emit(
        state.copyWith(
          chatMessages: List.from([... state.chatMessages,message]),
          )
      );
  }

}
