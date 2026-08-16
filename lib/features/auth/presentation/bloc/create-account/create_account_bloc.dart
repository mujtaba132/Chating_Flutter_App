import 'package:bloc/bloc.dart';
import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_account_event.dart';
part 'create_account_state.dart';
part 'create_account_bloc.freezed.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  CreateAccountBloc() : super(const CreateAccountState()) {
    on<PickProfileImage>(_onPickProfileImage);
    on<SetFullName>(_onSetFullName);
    on<SetMobileNumber>(_onSetMobileNumber);
    on<SetPassword>(_onSetPassword);
    on<SetConfirmPassword>(_onSetConfirmPassword);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
    on<ToggleConfirmPasswordVisibility>(_onToggleConfirmPasswordVisibility);
    on<CreateAccount>(_onCreateAccount);
  }

  void _onPickProfileImage(PickProfileImage event, Emitter<CreateAccountState> emit) {

      

  }

  void _onSetFullName(SetFullName event, Emitter<CreateAccountState> emit) {
    emit(state.copyWith(fullName: event.fullName));
  }

  void _onSetMobileNumber(
    SetMobileNumber event,
    Emitter<CreateAccountState> emit,
  ) {
    emit(state.copyWith(mobileNumber: event.mobileNumber));
  }

  void _onSetPassword(SetPassword event, Emitter<CreateAccountState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onSetConfirmPassword(
    SetConfirmPassword event,
    Emitter<CreateAccountState> emit,
  ) {
    emit(state.copyWith(confirmPassword: event.confirmPassword));
  }

  void _onTogglePasswordVisibility(
    TogglePasswordVisibility event,
    Emitter<CreateAccountState> emit,
  ) {
    emit(state.copyWith(isPasswordObscured: !state.isPasswordObscured));
  }

  void _onToggleConfirmPasswordVisibility(
    ToggleConfirmPasswordVisibility event,
    Emitter<CreateAccountState> emit,
  ) {
    emit(
      state.copyWith(
        isConfirmPasswordObscured: !state.isConfirmPasswordObscured,
      ),
    );
  }

  Future<void> _onCreateAccount(
    CreateAccount event,
    Emitter<CreateAccountState> emit,
  ) async {
    emit(state.copyWith(status: ExceptionStatus.loading));

    try {
      // Firebase account creation will be implemented here.

      emit(state.copyWith(status: ExceptionStatus.success));
    } catch (e) {
      emit(
        state.copyWith(
          status: ExceptionStatus.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
