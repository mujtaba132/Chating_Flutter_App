import 'package:chat_app/features/auth/data/model/user_model.dart';
import 'package:chat_app/features/auth/domain/entities/user_entity.dart';

extension UserMapper on UserModel{
      
        UserEntity toEntity(){
             return UserEntity(
              userName: fullName, 
              email: email, 
              fcmToken: fcmToken!, 
              currentUser: userId!,   
              authStatus: authStatus,
              imageUrl: imageURL,     
             );
        }
      
}