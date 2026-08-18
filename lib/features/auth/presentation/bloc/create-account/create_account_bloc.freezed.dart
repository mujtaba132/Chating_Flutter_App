// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAccountEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccountEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccountEvent()';
}


}

/// @nodoc
class $CreateAccountEventCopyWith<$Res>  {
$CreateAccountEventCopyWith(CreateAccountEvent _, $Res Function(CreateAccountEvent) __);
}


/// Adds pattern-matching-related methods to [CreateAccountEvent].
extension CreateAccountEventPatterns on CreateAccountEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateAccountStarted value)?  started,TResult Function( PickProfileImage value)?  pickProfileImage,TResult Function( SetFullName value)?  setFullName,TResult Function( SetEmail value)?  setEmail,TResult Function( SetPassword value)?  setPassword,TResult Function( SetConfirmPassword value)?  setConfirmPassword,TResult Function( TogglePasswordVisibility value)?  togglePasswordVisibility,TResult Function( ToggleConfirmPasswordVisibility value)?  toggleConfirmPasswordVisibility,TResult Function( CreateAccount value)?  createAccount,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateAccountStarted() when started != null:
return started(_that);case PickProfileImage() when pickProfileImage != null:
return pickProfileImage(_that);case SetFullName() when setFullName != null:
return setFullName(_that);case SetEmail() when setEmail != null:
return setEmail(_that);case SetPassword() when setPassword != null:
return setPassword(_that);case SetConfirmPassword() when setConfirmPassword != null:
return setConfirmPassword(_that);case TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility(_that);case ToggleConfirmPasswordVisibility() when toggleConfirmPasswordVisibility != null:
return toggleConfirmPasswordVisibility(_that);case CreateAccount() when createAccount != null:
return createAccount(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateAccountStarted value)  started,required TResult Function( PickProfileImage value)  pickProfileImage,required TResult Function( SetFullName value)  setFullName,required TResult Function( SetEmail value)  setEmail,required TResult Function( SetPassword value)  setPassword,required TResult Function( SetConfirmPassword value)  setConfirmPassword,required TResult Function( TogglePasswordVisibility value)  togglePasswordVisibility,required TResult Function( ToggleConfirmPasswordVisibility value)  toggleConfirmPasswordVisibility,required TResult Function( CreateAccount value)  createAccount,}){
final _that = this;
switch (_that) {
case CreateAccountStarted():
return started(_that);case PickProfileImage():
return pickProfileImage(_that);case SetFullName():
return setFullName(_that);case SetEmail():
return setEmail(_that);case SetPassword():
return setPassword(_that);case SetConfirmPassword():
return setConfirmPassword(_that);case TogglePasswordVisibility():
return togglePasswordVisibility(_that);case ToggleConfirmPasswordVisibility():
return toggleConfirmPasswordVisibility(_that);case CreateAccount():
return createAccount(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateAccountStarted value)?  started,TResult? Function( PickProfileImage value)?  pickProfileImage,TResult? Function( SetFullName value)?  setFullName,TResult? Function( SetEmail value)?  setEmail,TResult? Function( SetPassword value)?  setPassword,TResult? Function( SetConfirmPassword value)?  setConfirmPassword,TResult? Function( TogglePasswordVisibility value)?  togglePasswordVisibility,TResult? Function( ToggleConfirmPasswordVisibility value)?  toggleConfirmPasswordVisibility,TResult? Function( CreateAccount value)?  createAccount,}){
final _that = this;
switch (_that) {
case CreateAccountStarted() when started != null:
return started(_that);case PickProfileImage() when pickProfileImage != null:
return pickProfileImage(_that);case SetFullName() when setFullName != null:
return setFullName(_that);case SetEmail() when setEmail != null:
return setEmail(_that);case SetPassword() when setPassword != null:
return setPassword(_that);case SetConfirmPassword() when setConfirmPassword != null:
return setConfirmPassword(_that);case TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility(_that);case ToggleConfirmPasswordVisibility() when toggleConfirmPasswordVisibility != null:
return toggleConfirmPasswordVisibility(_that);case CreateAccount() when createAccount != null:
return createAccount(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  pickProfileImage,TResult Function( String fullName)?  setFullName,TResult Function( String email)?  setEmail,TResult Function( String password)?  setPassword,TResult Function( String confirmPassword)?  setConfirmPassword,TResult Function()?  togglePasswordVisibility,TResult Function()?  toggleConfirmPasswordVisibility,TResult Function()?  createAccount,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateAccountStarted() when started != null:
return started();case PickProfileImage() when pickProfileImage != null:
return pickProfileImage();case SetFullName() when setFullName != null:
return setFullName(_that.fullName);case SetEmail() when setEmail != null:
return setEmail(_that.email);case SetPassword() when setPassword != null:
return setPassword(_that.password);case SetConfirmPassword() when setConfirmPassword != null:
return setConfirmPassword(_that.confirmPassword);case TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility();case ToggleConfirmPasswordVisibility() when toggleConfirmPasswordVisibility != null:
return toggleConfirmPasswordVisibility();case CreateAccount() when createAccount != null:
return createAccount();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  pickProfileImage,required TResult Function( String fullName)  setFullName,required TResult Function( String email)  setEmail,required TResult Function( String password)  setPassword,required TResult Function( String confirmPassword)  setConfirmPassword,required TResult Function()  togglePasswordVisibility,required TResult Function()  toggleConfirmPasswordVisibility,required TResult Function()  createAccount,}) {final _that = this;
switch (_that) {
case CreateAccountStarted():
return started();case PickProfileImage():
return pickProfileImage();case SetFullName():
return setFullName(_that.fullName);case SetEmail():
return setEmail(_that.email);case SetPassword():
return setPassword(_that.password);case SetConfirmPassword():
return setConfirmPassword(_that.confirmPassword);case TogglePasswordVisibility():
return togglePasswordVisibility();case ToggleConfirmPasswordVisibility():
return toggleConfirmPasswordVisibility();case CreateAccount():
return createAccount();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  pickProfileImage,TResult? Function( String fullName)?  setFullName,TResult? Function( String email)?  setEmail,TResult? Function( String password)?  setPassword,TResult? Function( String confirmPassword)?  setConfirmPassword,TResult? Function()?  togglePasswordVisibility,TResult? Function()?  toggleConfirmPasswordVisibility,TResult? Function()?  createAccount,}) {final _that = this;
switch (_that) {
case CreateAccountStarted() when started != null:
return started();case PickProfileImage() when pickProfileImage != null:
return pickProfileImage();case SetFullName() when setFullName != null:
return setFullName(_that.fullName);case SetEmail() when setEmail != null:
return setEmail(_that.email);case SetPassword() when setPassword != null:
return setPassword(_that.password);case SetConfirmPassword() when setConfirmPassword != null:
return setConfirmPassword(_that.confirmPassword);case TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility();case ToggleConfirmPasswordVisibility() when toggleConfirmPasswordVisibility != null:
return toggleConfirmPasswordVisibility();case CreateAccount() when createAccount != null:
return createAccount();case _:
  return null;

}
}

}

/// @nodoc


class CreateAccountStarted implements CreateAccountEvent {
  const CreateAccountStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccountStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccountEvent.started()';
}


}




/// @nodoc


class PickProfileImage implements CreateAccountEvent {
  const PickProfileImage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickProfileImage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccountEvent.pickProfileImage()';
}


}




/// @nodoc


class SetFullName implements CreateAccountEvent {
  const SetFullName({required this.fullName});
  

 final  String fullName;

/// Create a copy of CreateAccountEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetFullNameCopyWith<SetFullName> get copyWith => _$SetFullNameCopyWithImpl<SetFullName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetFullName&&(identical(other.fullName, fullName) || other.fullName == fullName));
}


@override
int get hashCode => Object.hash(runtimeType,fullName);

@override
String toString() {
  return 'CreateAccountEvent.setFullName(fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class $SetFullNameCopyWith<$Res> implements $CreateAccountEventCopyWith<$Res> {
  factory $SetFullNameCopyWith(SetFullName value, $Res Function(SetFullName) _then) = _$SetFullNameCopyWithImpl;
@useResult
$Res call({
 String fullName
});




}
/// @nodoc
class _$SetFullNameCopyWithImpl<$Res>
    implements $SetFullNameCopyWith<$Res> {
  _$SetFullNameCopyWithImpl(this._self, this._then);

  final SetFullName _self;
  final $Res Function(SetFullName) _then;

/// Create a copy of CreateAccountEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fullName = null,}) {
  return _then(SetFullName(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SetEmail implements CreateAccountEvent {
  const SetEmail({required this.email});
  

 final  String email;

/// Create a copy of CreateAccountEvent
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
  return 'CreateAccountEvent.setEmail(email: $email)';
}


}

/// @nodoc
abstract mixin class $SetEmailCopyWith<$Res> implements $CreateAccountEventCopyWith<$Res> {
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

/// Create a copy of CreateAccountEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(SetEmail(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SetPassword implements CreateAccountEvent {
  const SetPassword({required this.password});
  

 final  String password;

/// Create a copy of CreateAccountEvent
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
  return 'CreateAccountEvent.setPassword(password: $password)';
}


}

/// @nodoc
abstract mixin class $SetPasswordCopyWith<$Res> implements $CreateAccountEventCopyWith<$Res> {
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

/// Create a copy of CreateAccountEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(SetPassword(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SetConfirmPassword implements CreateAccountEvent {
  const SetConfirmPassword({required this.confirmPassword});
  

 final  String confirmPassword;

/// Create a copy of CreateAccountEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetConfirmPasswordCopyWith<SetConfirmPassword> get copyWith => _$SetConfirmPasswordCopyWithImpl<SetConfirmPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetConfirmPassword&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}


@override
int get hashCode => Object.hash(runtimeType,confirmPassword);

@override
String toString() {
  return 'CreateAccountEvent.setConfirmPassword(confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class $SetConfirmPasswordCopyWith<$Res> implements $CreateAccountEventCopyWith<$Res> {
  factory $SetConfirmPasswordCopyWith(SetConfirmPassword value, $Res Function(SetConfirmPassword) _then) = _$SetConfirmPasswordCopyWithImpl;
@useResult
$Res call({
 String confirmPassword
});




}
/// @nodoc
class _$SetConfirmPasswordCopyWithImpl<$Res>
    implements $SetConfirmPasswordCopyWith<$Res> {
  _$SetConfirmPasswordCopyWithImpl(this._self, this._then);

  final SetConfirmPassword _self;
  final $Res Function(SetConfirmPassword) _then;

/// Create a copy of CreateAccountEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? confirmPassword = null,}) {
  return _then(SetConfirmPassword(
confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TogglePasswordVisibility implements CreateAccountEvent {
  const TogglePasswordVisibility();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TogglePasswordVisibility);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccountEvent.togglePasswordVisibility()';
}


}




/// @nodoc


class ToggleConfirmPasswordVisibility implements CreateAccountEvent {
  const ToggleConfirmPasswordVisibility();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleConfirmPasswordVisibility);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccountEvent.toggleConfirmPasswordVisibility()';
}


}




/// @nodoc


class CreateAccount implements CreateAccountEvent {
  const CreateAccount();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccount);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccountEvent.createAccount()';
}


}




/// @nodoc
mixin _$CreateAccountState {

 String get fullName; String get email; String get password; String get confirmPassword; String? get profileImage; ExceptionStatus get imageUploadStatus; bool get isPasswordObscured; bool get isConfirmPasswordObscured; ExceptionStatus get formStatus; String? get errorMessage;
/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAccountStateCopyWith<CreateAccountState> get copyWith => _$CreateAccountStateCopyWithImpl<CreateAccountState>(this as CreateAccountState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccountState&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.imageUploadStatus, imageUploadStatus) || other.imageUploadStatus == imageUploadStatus)&&(identical(other.isPasswordObscured, isPasswordObscured) || other.isPasswordObscured == isPasswordObscured)&&(identical(other.isConfirmPasswordObscured, isConfirmPasswordObscured) || other.isConfirmPasswordObscured == isConfirmPasswordObscured)&&(identical(other.formStatus, formStatus) || other.formStatus == formStatus)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,email,password,confirmPassword,profileImage,imageUploadStatus,isPasswordObscured,isConfirmPasswordObscured,formStatus,errorMessage);

@override
String toString() {
  return 'CreateAccountState(fullName: $fullName, email: $email, password: $password, confirmPassword: $confirmPassword, profileImage: $profileImage, imageUploadStatus: $imageUploadStatus, isPasswordObscured: $isPasswordObscured, isConfirmPasswordObscured: $isConfirmPasswordObscured, formStatus: $formStatus, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CreateAccountStateCopyWith<$Res>  {
  factory $CreateAccountStateCopyWith(CreateAccountState value, $Res Function(CreateAccountState) _then) = _$CreateAccountStateCopyWithImpl;
@useResult
$Res call({
 String fullName, String email, String password, String confirmPassword, String? profileImage, ExceptionStatus imageUploadStatus, bool isPasswordObscured, bool isConfirmPasswordObscured, ExceptionStatus formStatus, String? errorMessage
});




}
/// @nodoc
class _$CreateAccountStateCopyWithImpl<$Res>
    implements $CreateAccountStateCopyWith<$Res> {
  _$CreateAccountStateCopyWithImpl(this._self, this._then);

  final CreateAccountState _self;
  final $Res Function(CreateAccountState) _then;

/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? email = null,Object? password = null,Object? confirmPassword = null,Object? profileImage = freezed,Object? imageUploadStatus = null,Object? isPasswordObscured = null,Object? isConfirmPasswordObscured = null,Object? formStatus = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,imageUploadStatus: null == imageUploadStatus ? _self.imageUploadStatus : imageUploadStatus // ignore: cast_nullable_to_non_nullable
as ExceptionStatus,isPasswordObscured: null == isPasswordObscured ? _self.isPasswordObscured : isPasswordObscured // ignore: cast_nullable_to_non_nullable
as bool,isConfirmPasswordObscured: null == isConfirmPasswordObscured ? _self.isConfirmPasswordObscured : isConfirmPasswordObscured // ignore: cast_nullable_to_non_nullable
as bool,formStatus: null == formStatus ? _self.formStatus : formStatus // ignore: cast_nullable_to_non_nullable
as ExceptionStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAccountState].
extension CreateAccountStatePatterns on CreateAccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAccountState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAccountState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAccountState value)  $default,){
final _that = this;
switch (_that) {
case _CreateAccountState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAccountState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAccountState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fullName,  String email,  String password,  String confirmPassword,  String? profileImage,  ExceptionStatus imageUploadStatus,  bool isPasswordObscured,  bool isConfirmPasswordObscured,  ExceptionStatus formStatus,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAccountState() when $default != null:
return $default(_that.fullName,_that.email,_that.password,_that.confirmPassword,_that.profileImage,_that.imageUploadStatus,_that.isPasswordObscured,_that.isConfirmPasswordObscured,_that.formStatus,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fullName,  String email,  String password,  String confirmPassword,  String? profileImage,  ExceptionStatus imageUploadStatus,  bool isPasswordObscured,  bool isConfirmPasswordObscured,  ExceptionStatus formStatus,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CreateAccountState():
return $default(_that.fullName,_that.email,_that.password,_that.confirmPassword,_that.profileImage,_that.imageUploadStatus,_that.isPasswordObscured,_that.isConfirmPasswordObscured,_that.formStatus,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fullName,  String email,  String password,  String confirmPassword,  String? profileImage,  ExceptionStatus imageUploadStatus,  bool isPasswordObscured,  bool isConfirmPasswordObscured,  ExceptionStatus formStatus,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CreateAccountState() when $default != null:
return $default(_that.fullName,_that.email,_that.password,_that.confirmPassword,_that.profileImage,_that.imageUploadStatus,_that.isPasswordObscured,_that.isConfirmPasswordObscured,_that.formStatus,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAccountState implements CreateAccountState {
  const _CreateAccountState({this.fullName = '', this.email = '', this.password = '', this.confirmPassword = '', this.profileImage, this.imageUploadStatus = ExceptionStatus.initail, this.isPasswordObscured = true, this.isConfirmPasswordObscured = true, this.formStatus = ExceptionStatus.initail, this.errorMessage});
  

@override@JsonKey() final  String fullName;
@override@JsonKey() final  String email;
@override@JsonKey() final  String password;
@override@JsonKey() final  String confirmPassword;
@override final  String? profileImage;
@override@JsonKey() final  ExceptionStatus imageUploadStatus;
@override@JsonKey() final  bool isPasswordObscured;
@override@JsonKey() final  bool isConfirmPasswordObscured;
@override@JsonKey() final  ExceptionStatus formStatus;
@override final  String? errorMessage;

/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAccountStateCopyWith<_CreateAccountState> get copyWith => __$CreateAccountStateCopyWithImpl<_CreateAccountState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAccountState&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.imageUploadStatus, imageUploadStatus) || other.imageUploadStatus == imageUploadStatus)&&(identical(other.isPasswordObscured, isPasswordObscured) || other.isPasswordObscured == isPasswordObscured)&&(identical(other.isConfirmPasswordObscured, isConfirmPasswordObscured) || other.isConfirmPasswordObscured == isConfirmPasswordObscured)&&(identical(other.formStatus, formStatus) || other.formStatus == formStatus)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,email,password,confirmPassword,profileImage,imageUploadStatus,isPasswordObscured,isConfirmPasswordObscured,formStatus,errorMessage);

@override
String toString() {
  return 'CreateAccountState(fullName: $fullName, email: $email, password: $password, confirmPassword: $confirmPassword, profileImage: $profileImage, imageUploadStatus: $imageUploadStatus, isPasswordObscured: $isPasswordObscured, isConfirmPasswordObscured: $isConfirmPasswordObscured, formStatus: $formStatus, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CreateAccountStateCopyWith<$Res> implements $CreateAccountStateCopyWith<$Res> {
  factory _$CreateAccountStateCopyWith(_CreateAccountState value, $Res Function(_CreateAccountState) _then) = __$CreateAccountStateCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String email, String password, String confirmPassword, String? profileImage, ExceptionStatus imageUploadStatus, bool isPasswordObscured, bool isConfirmPasswordObscured, ExceptionStatus formStatus, String? errorMessage
});




}
/// @nodoc
class __$CreateAccountStateCopyWithImpl<$Res>
    implements _$CreateAccountStateCopyWith<$Res> {
  __$CreateAccountStateCopyWithImpl(this._self, this._then);

  final _CreateAccountState _self;
  final $Res Function(_CreateAccountState) _then;

/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? email = null,Object? password = null,Object? confirmPassword = null,Object? profileImage = freezed,Object? imageUploadStatus = null,Object? isPasswordObscured = null,Object? isConfirmPasswordObscured = null,Object? formStatus = null,Object? errorMessage = freezed,}) {
  return _then(_CreateAccountState(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,imageUploadStatus: null == imageUploadStatus ? _self.imageUploadStatus : imageUploadStatus // ignore: cast_nullable_to_non_nullable
as ExceptionStatus,isPasswordObscured: null == isPasswordObscured ? _self.isPasswordObscured : isPasswordObscured // ignore: cast_nullable_to_non_nullable
as bool,isConfirmPasswordObscured: null == isConfirmPasswordObscured ? _self.isConfirmPasswordObscured : isConfirmPasswordObscured // ignore: cast_nullable_to_non_nullable
as bool,formStatus: null == formStatus ? _self.formStatus : formStatus // ignore: cast_nullable_to_non_nullable
as ExceptionStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
