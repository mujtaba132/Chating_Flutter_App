
import 'dart:io';

import 'package:chat_app/features/auth/data/data-source/auth_data_source.dart';
import 'package:chat_app/features/auth/data/data-source/cloudinary_data_source.dart';
import 'package:chat_app/features/auth/data/mapper/user_mapper.dart';
import 'package:chat_app/features/auth/data/model/user_model.dart';
import 'package:chat_app/features/auth/domain/entities/user_entity.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repository/user_repository_interface.dart';

class UserRepositoryImpl implements UserRepository{

  final AuthDataSource _authDataSource;
  final CloudinaryDataSource _cloudinaryDataSource;

  UserRepositoryImpl({required this._authDataSource,required this._cloudinaryDataSource});


  //create account
  @override
  Future<UserEntity> register(String userName,String email, String password,String imageUrl) async{
         
         UserCredential credential = await _authDataSource.register(email, password);
         
         User user = credential.user!;

         UserModel model = UserModel.fromFirebase(user);

         model = model.copyWith( fullName: userName, imageURL: imageUrl );

         return model.toEntity();

  }

  //login
  @override
  Future<UserEntity> login(String email, String password) async{
          
          UserCredential credential = await _authDataSource.login(email, password);

          User user = credential.user!;

          final UserModel model = UserModel.fromFirebase(user);

          return model.toEntity();
  }
   

   
  //logout
  @override
  Future<void> logout() async{           
            await _authDataSource.logout();
  }

  //upload user profile image
  @override
  Future<String> uploadImage(File file) async{          
            CloudinaryResponse response = await _cloudinaryDataSource.uploadImageFile(file);
            return response.secureUrl;
  }
 
           
}