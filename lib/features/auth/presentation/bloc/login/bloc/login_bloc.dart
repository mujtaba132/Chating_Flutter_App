import 'package:bloc/bloc.dart';
import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:chat_app/features/auth/domain/use-cases/login_use_case.dart';
import '../event/login_event.dart';
import '../state/login_state.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {

  final LoginUseCase _loginUseCase;

  LoginBloc({required this._loginUseCase}) : super(LoginState()) {
    on<SetEmail>(_onSetEmail);
    on<SetPassword>(_onSetPassword);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
    on<Login>(_onUserLogin);
  }
  
  void _onSetEmail(SetEmail event,Emitter<LoginState> emit){
        emit(state.copyWith(email: event.email));
  }

  void _onSetPassword(SetPassword event,Emitter<LoginState> emit){
       emit(state.copyWith(password: event.password));
  }

  void _onTogglePasswordVisibility(TogglePasswordVisibility event,Emitter<LoginState> emit){       
          emit(state.copyWith(isPasswordObscured: !state.isPasswordObscured));
  }


  void _onUserLogin(Login event,Emitter<LoginState> emit) async{
             
          emit(state.copyWith(errorMessage: '' , loginstatus: ExceptionStatus.loading));

          try{           
              await _loginUseCase.call(email: state.email, password: state.password);
              emit(state.copyWith(loginstatus: ExceptionStatus.success));

          } catch (e){         
              emit(state.copyWith(errorMessage: e.toString() , loginstatus: ExceptionStatus.error));

          }
          
  }

}
