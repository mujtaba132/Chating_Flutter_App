import 'dart:io';
import '../repository/user_repository_interface.dart';

class UploadImageUseCase {
     
     final UserRepository _userRepository;
     UploadImageUseCase(this._userRepository);

     Future<String> call({required File file}){
              return _userRepository.uploadImage(file);
     } 

}