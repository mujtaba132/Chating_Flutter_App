import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:chat_app/features/auth/domain/use-cases/register_use_case.dart';
import 'package:chat_app/features/auth/domain/use-cases/upload_image_use_case.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/use-cases/pick_image_use_case.dart';

part 'create_account_event.dart';
part 'create_account_state.dart';
part 'create_account_bloc.freezed.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  
   final RegisterUseCase _registerUseCase;
   final UploadImageUseCase _uploadImageUseCase;
   final PickImageUseCase _pickImageUseCase;

  CreateAccountBloc({
        required this._registerUseCase,
        required this._uploadImageUseCase,
        required this._pickImageUseCase,
    }) : super(const CreateAccountState()) {

    on<PickProfileImage>(_onPickProfileImage);
    on<SetFullName>(_onSetFullName);
    on<SetEmail>(_onSetEmail);
    on<SetPassword>(_onSetPassword);
    on<SetConfirmPassword>(_onSetConfirmPassword);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
    on<ToggleConfirmPasswordVisibility>(_onToggleConfirmPasswordVisibility);
    on<CreateAccount>(_onCreateAccount);

  }

  void _onPickProfileImage(PickProfileImage event, Emitter<CreateAccountState> emit) async{

          emit(state.copyWith(errorMessage: ''));  

          try{

              final File? file  = await _pickImageUseCase.call();

              emit(state.copyWith(imageUploadStatus: ExceptionStatus.loading));

              final String profileImage = await _uploadImageUseCase.call(file:file!);
              
              emit(state.copyWith(
                profileImage: profileImage,
                imageUploadStatus: ExceptionStatus.success
                ));

          }  on TimeoutException {
               emit(state.copyWith(errorMessage: 'No and unstable internet connection'));
          }
           catch(e){          
              emit(state.copyWith(
                errorMessage: e.toString(),
                imageUploadStatus: ExceptionStatus.error)
                );

          }
  }

  void _onSetFullName(SetFullName event, Emitter<CreateAccountState> emit) {
    emit(state.copyWith(fullName: event.fullName));
  }

  void _onSetEmail(
    SetEmail event,
    Emitter<CreateAccountState> emit,
  ) {
    emit(state.copyWith(email: event.email));
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

    emit(state.copyWith(formStatus: ExceptionStatus.loading,errorMessage: ''));

    try {
      
      await _registerUseCase.call(
        userName: state.fullName,
        email: state.email,
        password: state.password,
        imageUrl: state.profileImage ?? '',
        ).onError((error, stackTrace) => throw Exception(error),);
       
      emit(state.copyWith(
        formStatus: ExceptionStatus.success,
        profileImage: '',
        imageUploadStatus: ExceptionStatus.initail)
        );
        
    } on TimeoutException {
       emit(
        state.copyWith(
          formStatus: ExceptionStatus.error,
          errorMessage: 'No internet connection found!',
        ));
    }
    catch (e) {
      emit(
        state.copyWith(
          formStatus: ExceptionStatus.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
