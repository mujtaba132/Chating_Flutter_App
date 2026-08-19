
import 'dart:io';

import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:chat_app/features/auth/data/data-source/auth_data_source.dart';
import 'package:chat_app/features/auth/data/data-source/cloudinary_data_source.dart';
import 'package:chat_app/features/auth/data/data-source/firestore_data_source.dart';
import 'package:chat_app/features/auth/data/mapper/user_mapper.dart';
import 'package:chat_app/features/auth/data/model/user_model.dart';
import 'package:chat_app/features/auth/domain/entities/user_entity.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repository/user_repository_interface.dart';

class UserRepositoryImpl implements UserRepository{

  final AuthDataSource _authDataSource;
  final CloudinaryDataSource _cloudinaryDataSource;
  final FirestoreDataSource _firestoreDataSource;

  UserRepositoryImpl({
    required this._authDataSource,
    required this._cloudinaryDataSource,
    required this._firestoreDataSource
    });


  //create account
  @override
  Future<UserEntity> register(String userName,String email, String password,String imageUrl) async{
         
         UserCredential credential = await _authDataSource.register(email, password);

         String fcmToken = await _firestoreDataSource.getFCMToken();
         
         User user = credential.user!;

         await user.updateDisplayName(userName);
         await user.updatePhotoURL(imageUrl);

         UserModel model = UserModel.fromFirebase(user);

         model = model.copyWith( fullName: userName, imageURL: imageUrl ,fcmToken: fcmToken);

         await _firestoreDataSource.addUserToDataBase(documentId: model.userId!, data: model.toJson());

         return model.toEntity();

  }

  //login
  @override
  Future<UserEntity> login(String email, String password) async{
          
          UserCredential credential = await _authDataSource.login(email, password);

          User user = credential.user!; 

          final UserModel model = UserModel.fromFirebase(user);

          await _firestoreDataSource.updateUserInFirebase(documentId: model.userId!, data:{
            'authStatus' : UserAuthStatus.login.name
          });

          return model.toEntity();
  }
   

  //logout
  @override
  Future<void> logout(String userId) async{ 
          
            await _authDataSource.logout();

            await _firestoreDataSource.updateUserInFirebase(documentId: userId, data:{
            'authStatus' : UserAuthStatus.logout
          });
  }

  //upload user profile image
  @override
  Future<String> uploadImage(File file) async{          
            CloudinaryResponse response = await _cloudinaryDataSource.uploadImageFile(file);
            return response.secureUrl;
  }
 
           
}