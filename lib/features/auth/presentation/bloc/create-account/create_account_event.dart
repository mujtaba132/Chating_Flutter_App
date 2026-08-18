part of 'create_account_bloc.dart';

@freezed
class CreateAccountEvent with _$CreateAccountEvent {
  const factory CreateAccountEvent.started() =
      CreateAccountStarted;

  const factory CreateAccountEvent.pickProfileImage() = 
      PickProfileImage; 

  const factory CreateAccountEvent.setFullName({
    required String fullName,
  }) = SetFullName;

  const factory CreateAccountEvent.setEmail({
    required String email,
  }) = SetEmail; 

  const factory CreateAccountEvent.setPassword({
    required String password,
  }) = SetPassword;

  const factory CreateAccountEvent.setConfirmPassword({
    required String confirmPassword,
  }) = SetConfirmPassword;

  const factory CreateAccountEvent.togglePasswordVisibility() =
      TogglePasswordVisibility;

  const factory CreateAccountEvent.toggleConfirmPasswordVisibility() =
      ToggleConfirmPasswordVisibility;

  const factory CreateAccountEvent.createAccount() =
      CreateAccount;
}