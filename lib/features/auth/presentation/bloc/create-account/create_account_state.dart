part of 'create_account_bloc.dart';

@freezed
abstract class CreateAccountState with _$CreateAccountState {
  const factory CreateAccountState({
    @Default('') String fullName,
    @Default('') String mobileNumber,
    @Default('') String password,
    @Default('') String confirmPassword,

    String? profileImage,

    @Default(true) bool isPasswordObscured,
    @Default(true)  bool isConfirmPasswordObscured,

    @Default(ExceptionStatus.initail) ExceptionStatus status,
    String? errorMessage,

  }) = _CreateAccountState;
}

