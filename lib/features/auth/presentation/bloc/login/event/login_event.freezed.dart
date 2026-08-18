// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SetEmail value)?  setEmail,TResult Function( SetPassword value)?  setPassword,TResult Function( TogglePasswordVisibility value)?  togglePasswordVisibility,TResult Function( Login value)?  login,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SetEmail() when setEmail != null:
return setEmail(_that);case SetPassword() when setPassword != null:
return setPassword(_that);case TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility(_that);case Login() when login != null:
return login(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SetEmail value)  setEmail,required TResult Function( SetPassword value)  setPassword,required TResult Function( TogglePasswordVisibility value)  togglePasswordVisibility,required TResult Function( Login value)  login,}){
final _that = this;
switch (_that) {
case SetEmail():
return setEmail(_that);case SetPassword():
return setPassword(_that);case TogglePasswordVisibility():
return togglePasswordVisibility(_that);case Login():
return login(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SetEmail value)?  setEmail,TResult? Function( SetPassword value)?  setPassword,TResult? Function( TogglePasswordVisibility value)?  togglePasswordVisibility,TResult? Function( Login value)?  login,}){
final _that = this;
switch (_that) {
case SetEmail() when setEmail != null:
return setEmail(_that);case SetPassword() when setPassword != null:
return setPassword(_that);case TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility(_that);case Login() when login != null:
return login(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  setEmail,TResult Function( String password)?  setPassword,TResult Function()?  togglePasswordVisibility,TResult Function()?  login,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SetEmail() when setEmail != null:
return setEmail(_that.email);case SetPassword() when setPassword != null:
return setPassword(_that.password);case TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility();case Login() when login != null:
return login();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  setEmail,required TResult Function( String password)  setPassword,required TResult Function()  togglePasswordVisibility,required TResult Function()  login,}) {final _that = this;
switch (_that) {
case SetEmail():
return setEmail(_that.email);case SetPassword():
return setPassword(_that.password);case TogglePasswordVisibility():
return togglePasswordVisibility();case Login():
return login();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  setEmail,TResult? Function( String password)?  setPassword,TResult? Function()?  togglePasswordVisibility,TResult? Function()?  login,}) {final _that = this;
switch (_that) {
case SetEmail() when setEmail != null:
return setEmail(_that.email);case SetPassword() when setPassword != null:
return setPassword(_that.password);case TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility();case Login() when login != null:
return login();case _:
  return null;

}
}

}

/// @nodoc


class SetEmail implements LoginEvent {
  const SetEmail({required this.email});
  

 final  String email;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetEmailCopyWith<SetEmail> get copyWith => _$SetEmailCopyWithImpl<SetEmail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetEmail&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'LoginEvent.setEmail(email: $email)';
}


}

/// @nodoc
abstract mixin class $SetEmailCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $SetEmailCopyWith(SetEmail value, $Res Function(SetEmail) _then) = _$SetEmailCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$SetEmailCopyWithImpl<$Res>
    implements $SetEmailCopyWith<$Res> {
  _$SetEmailCopyWithImpl(this._self, this._then);

  final SetEmail _self;
  final $Res Function(SetEmail) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(SetEmail(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SetPassword implements LoginEvent {
  const SetPassword({required this.password});
  

 final  String password;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetPasswordCopyWith<SetPassword> get copyWith => _$SetPasswordCopyWithImpl<SetPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetPassword&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'LoginEvent.setPassword(password: $password)';
}


}

/// @nodoc
abstract mixin class $SetPasswordCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $SetPasswordCopyWith(SetPassword value, $Res Function(SetPassword) _then) = _$SetPasswordCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$SetPasswordCopyWithImpl<$Res>
    implements $SetPasswordCopyWith<$Res> {
  _$SetPasswordCopyWithImpl(this._self, this._then);

  final SetPassword _self;
  final $Res Function(SetPassword) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(SetPassword(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TogglePasswordVisibility implements LoginEvent {
  const TogglePasswordVisibility();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TogglePasswordVisibility);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.togglePasswordVisibility()';
}


}




/// @nodoc


class Login implements LoginEvent {
  const Login();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Login);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.login()';
}


}




// dart format on
