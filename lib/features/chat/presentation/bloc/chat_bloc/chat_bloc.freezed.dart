// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatEvent()';
}


}

/// @nodoc
class $ChatEventCopyWith<$Res>  {
$ChatEventCopyWith(ChatEvent _, $Res Function(ChatEvent) __);
}


/// Adds pattern-matching-related methods to [ChatEvent].
extension ChatEventPatterns on ChatEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( Intailization value)?  initailize,TResult Function( LoadMessages value)?  onLoadChat,TResult Function( AddMessage value)?  addNewMessage,TResult Function( SetMessage value)?  setNewMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case Intailization() when initailize != null:
return initailize(_that);case LoadMessages() when onLoadChat != null:
return onLoadChat(_that);case AddMessage() when addNewMessage != null:
return addNewMessage(_that);case SetMessage() when setNewMessage != null:
return setNewMessage(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( Intailization value)  initailize,required TResult Function( LoadMessages value)  onLoadChat,required TResult Function( AddMessage value)  addNewMessage,required TResult Function( SetMessage value)  setNewMessage,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case Intailization():
return initailize(_that);case LoadMessages():
return onLoadChat(_that);case AddMessage():
return addNewMessage(_that);case SetMessage():
return setNewMessage(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( Intailization value)?  initailize,TResult? Function( LoadMessages value)?  onLoadChat,TResult? Function( AddMessage value)?  addNewMessage,TResult? Function( SetMessage value)?  setNewMessage,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case Intailization() when initailize != null:
return initailize(_that);case LoadMessages() when onLoadChat != null:
return onLoadChat(_that);case AddMessage() when addNewMessage != null:
return addNewMessage(_that);case SetMessage() when setNewMessage != null:
return setNewMessage(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( UserEntity receiver)?  initailize,TResult Function()?  onLoadChat,TResult Function()?  addNewMessage,TResult Function( String newMessage)?  setNewMessage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case Intailization() when initailize != null:
return initailize(_that.receiver);case LoadMessages() when onLoadChat != null:
return onLoadChat();case AddMessage() when addNewMessage != null:
return addNewMessage();case SetMessage() when setNewMessage != null:
return setNewMessage(_that.newMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( UserEntity receiver)  initailize,required TResult Function()  onLoadChat,required TResult Function()  addNewMessage,required TResult Function( String newMessage)  setNewMessage,}) {final _that = this;
switch (_that) {
case _Started():
return started();case Intailization():
return initailize(_that.receiver);case LoadMessages():
return onLoadChat();case AddMessage():
return addNewMessage();case SetMessage():
return setNewMessage(_that.newMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( UserEntity receiver)?  initailize,TResult? Function()?  onLoadChat,TResult? Function()?  addNewMessage,TResult? Function( String newMessage)?  setNewMessage,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case Intailization() when initailize != null:
return initailize(_that.receiver);case LoadMessages() when onLoadChat != null:
return onLoadChat();case AddMessage() when addNewMessage != null:
return addNewMessage();case SetMessage() when setNewMessage != null:
return setNewMessage(_that.newMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Started with DiagnosticableTreeMixin implements ChatEvent {
  const _Started();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatEvent.started'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatEvent.started()';
}


}




/// @nodoc


class Intailization with DiagnosticableTreeMixin implements ChatEvent {
  const Intailization({required this.receiver});
  

 final  UserEntity receiver;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntailizationCopyWith<Intailization> get copyWith => _$IntailizationCopyWithImpl<Intailization>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatEvent.initailize'))
    ..add(DiagnosticsProperty('receiver', receiver));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Intailization&&(identical(other.receiver, receiver) || other.receiver == receiver));
}


@override
int get hashCode => Object.hash(runtimeType,receiver);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatEvent.initailize(receiver: $receiver)';
}


}

/// @nodoc
abstract mixin class $IntailizationCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory $IntailizationCopyWith(Intailization value, $Res Function(Intailization) _then) = _$IntailizationCopyWithImpl;
@useResult
$Res call({
 UserEntity receiver
});




}
/// @nodoc
class _$IntailizationCopyWithImpl<$Res>
    implements $IntailizationCopyWith<$Res> {
  _$IntailizationCopyWithImpl(this._self, this._then);

  final Intailization _self;
  final $Res Function(Intailization) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? receiver = null,}) {
  return _then(Intailization(
receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}


}

/// @nodoc


class LoadMessages with DiagnosticableTreeMixin implements ChatEvent {
  const LoadMessages();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatEvent.onLoadChat'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMessages);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatEvent.onLoadChat()';
}


}




/// @nodoc


class AddMessage with DiagnosticableTreeMixin implements ChatEvent {
  const AddMessage();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatEvent.addNewMessage'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatEvent.addNewMessage()';
}


}




/// @nodoc


class SetMessage with DiagnosticableTreeMixin implements ChatEvent {
  const SetMessage({required this.newMessage});
  

 final  String newMessage;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetMessageCopyWith<SetMessage> get copyWith => _$SetMessageCopyWithImpl<SetMessage>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatEvent.setNewMessage'))
    ..add(DiagnosticsProperty('newMessage', newMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetMessage&&(identical(other.newMessage, newMessage) || other.newMessage == newMessage));
}


@override
int get hashCode => Object.hash(runtimeType,newMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatEvent.setNewMessage(newMessage: $newMessage)';
}


}

/// @nodoc
abstract mixin class $SetMessageCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory $SetMessageCopyWith(SetMessage value, $Res Function(SetMessage) _then) = _$SetMessageCopyWithImpl;
@useResult
$Res call({
 String newMessage
});




}
/// @nodoc
class _$SetMessageCopyWithImpl<$Res>
    implements $SetMessageCopyWith<$Res> {
  _$SetMessageCopyWithImpl(this._self, this._then);

  final SetMessage _self;
  final $Res Function(SetMessage) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newMessage = null,}) {
  return _then(SetMessage(
newMessage: null == newMessage ? _self.newMessage : newMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ChatState implements DiagnosticableTreeMixin {

 UserEntity? get sender; UserEntity? get receiver; String get newMessage; String get conversationId; List<ChatMessageEntity> get chatMessages; ExceptionStatus get exception;
/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatStateCopyWith<ChatState> get copyWith => _$ChatStateCopyWithImpl<ChatState>(this as ChatState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatState'))
    ..add(DiagnosticsProperty('sender', sender))..add(DiagnosticsProperty('receiver', receiver))..add(DiagnosticsProperty('newMessage', newMessage))..add(DiagnosticsProperty('conversationId', conversationId))..add(DiagnosticsProperty('chatMessages', chatMessages))..add(DiagnosticsProperty('exception', exception));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatState&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.newMessage, newMessage) || other.newMessage == newMessage)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&const DeepCollectionEquality().equals(other.chatMessages, chatMessages)&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,sender,receiver,newMessage,conversationId,const DeepCollectionEquality().hash(chatMessages),exception);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatState(sender: $sender, receiver: $receiver, newMessage: $newMessage, conversationId: $conversationId, chatMessages: $chatMessages, exception: $exception)';
}


}

/// @nodoc
abstract mixin class $ChatStateCopyWith<$Res>  {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) _then) = _$ChatStateCopyWithImpl;
@useResult
$Res call({
 UserEntity? sender, UserEntity? receiver, String newMessage, String conversationId, List<ChatMessageEntity> chatMessages, ExceptionStatus exception
});




}
/// @nodoc
class _$ChatStateCopyWithImpl<$Res>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._self, this._then);

  final ChatState _self;
  final $Res Function(ChatState) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sender = freezed,Object? receiver = freezed,Object? newMessage = null,Object? conversationId = null,Object? chatMessages = null,Object? exception = null,}) {
  return _then(_self.copyWith(
sender: freezed == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as UserEntity?,receiver: freezed == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as UserEntity?,newMessage: null == newMessage ? _self.newMessage : newMessage // ignore: cast_nullable_to_non_nullable
as String,conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,chatMessages: null == chatMessages ? _self.chatMessages : chatMessages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageEntity>,exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as ExceptionStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatState].
extension ChatStatePatterns on ChatState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatState value)  $default,){
final _that = this;
switch (_that) {
case _ChatState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatState value)?  $default,){
final _that = this;
switch (_that) {
case _ChatState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserEntity? sender,  UserEntity? receiver,  String newMessage,  String conversationId,  List<ChatMessageEntity> chatMessages,  ExceptionStatus exception)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatState() when $default != null:
return $default(_that.sender,_that.receiver,_that.newMessage,_that.conversationId,_that.chatMessages,_that.exception);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserEntity? sender,  UserEntity? receiver,  String newMessage,  String conversationId,  List<ChatMessageEntity> chatMessages,  ExceptionStatus exception)  $default,) {final _that = this;
switch (_that) {
case _ChatState():
return $default(_that.sender,_that.receiver,_that.newMessage,_that.conversationId,_that.chatMessages,_that.exception);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserEntity? sender,  UserEntity? receiver,  String newMessage,  String conversationId,  List<ChatMessageEntity> chatMessages,  ExceptionStatus exception)?  $default,) {final _that = this;
switch (_that) {
case _ChatState() when $default != null:
return $default(_that.sender,_that.receiver,_that.newMessage,_that.conversationId,_that.chatMessages,_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _ChatState with DiagnosticableTreeMixin implements ChatState {
   _ChatState({this.sender, this.receiver, this.newMessage = '', this.conversationId = '', final  List<ChatMessageEntity> chatMessages = const [], this.exception = ExceptionStatus.initail}): _chatMessages = chatMessages;
  

@override final  UserEntity? sender;
@override final  UserEntity? receiver;
@override@JsonKey() final  String newMessage;
@override@JsonKey() final  String conversationId;
 final  List<ChatMessageEntity> _chatMessages;
@override@JsonKey() List<ChatMessageEntity> get chatMessages {
  if (_chatMessages is EqualUnmodifiableListView) return _chatMessages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chatMessages);
}

@override@JsonKey() final  ExceptionStatus exception;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatStateCopyWith<_ChatState> get copyWith => __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatState'))
    ..add(DiagnosticsProperty('sender', sender))..add(DiagnosticsProperty('receiver', receiver))..add(DiagnosticsProperty('newMessage', newMessage))..add(DiagnosticsProperty('conversationId', conversationId))..add(DiagnosticsProperty('chatMessages', chatMessages))..add(DiagnosticsProperty('exception', exception));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatState&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.newMessage, newMessage) || other.newMessage == newMessage)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&const DeepCollectionEquality().equals(other._chatMessages, _chatMessages)&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,sender,receiver,newMessage,conversationId,const DeepCollectionEquality().hash(_chatMessages),exception);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatState(sender: $sender, receiver: $receiver, newMessage: $newMessage, conversationId: $conversationId, chatMessages: $chatMessages, exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(_ChatState value, $Res Function(_ChatState) _then) = __$ChatStateCopyWithImpl;
@override @useResult
$Res call({
 UserEntity? sender, UserEntity? receiver, String newMessage, String conversationId, List<ChatMessageEntity> chatMessages, ExceptionStatus exception
});




}
/// @nodoc
class __$ChatStateCopyWithImpl<$Res>
    implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(this._self, this._then);

  final _ChatState _self;
  final $Res Function(_ChatState) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sender = freezed,Object? receiver = freezed,Object? newMessage = null,Object? conversationId = null,Object? chatMessages = null,Object? exception = null,}) {
  return _then(_ChatState(
sender: freezed == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as UserEntity?,receiver: freezed == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as UserEntity?,newMessage: null == newMessage ? _self.newMessage : newMessage // ignore: cast_nullable_to_non_nullable
as String,conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,chatMessages: null == chatMessages ? _self._chatMessages : chatMessages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageEntity>,exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as ExceptionStatus,
  ));
}


}

// dart format on
