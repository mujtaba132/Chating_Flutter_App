import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/helper/utlils/enum/enum.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
        
        const factory LoginState({
              @Default('') String email,
              @Default('') String password, 

              @Default(true) bool isPasswordObscured, 

              @Default('') String errorMessage,
              @Default(ExceptionStatus.initail) ExceptionStatus loginstatus,

        }) = _LoginState;
        
}

