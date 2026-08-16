import 'dart:io';
import '../../data/repository/user_repository_impl.dart';

class UploadImageUseCase {
     
     final UserRepositoryImpl _userRepositoryImpl;
     UploadImageUseCase(this._userRepositoryImpl);

     Future<String> call({required File file}){
              return _userRepositoryImpl.uploadImage(file);
     } 

}