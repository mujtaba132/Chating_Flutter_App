import 'dart:io';
import '../entities/user_entity.dart';

abstract interface class UserRepository {
     
       Future<String> uploadImage(File file);

       Future<UserEntity> register(String userName,String imageUrl,String email,String password);

       Future<UserEntity> login(String email,String password);

       Future<void> logout(String userId);

}