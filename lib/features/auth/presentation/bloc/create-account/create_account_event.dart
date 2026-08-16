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

  const factory CreateAccountEvent.setMobileNumber({
    required String mobileNumber,
  }) = SetMobileNumber;

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