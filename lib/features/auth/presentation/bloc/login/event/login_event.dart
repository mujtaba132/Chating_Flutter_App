import 'package:freezed_annotation/freezed_annotation.dart';


part 'login_event.freezed.dart';

@freezed 
abstract class LoginEvent  with  _$LoginEvent{

   const factory LoginEvent.setEmail({
    required String email
   }) = SetEmail;

   const factory LoginEvent.setPassword({
    required String password
   }) = SetPassword;
   
   const factory LoginEvent.togglePasswordVisibility()
    = TogglePasswordVisibility;
     
   const factory LoginEvent.login()= Login;

}
