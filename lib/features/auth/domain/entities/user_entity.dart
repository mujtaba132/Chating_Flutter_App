

import 'package:chat_app/core/helper/utlils/enum/enum.dart';

class UserEntity {

    final String userName;
    final String email;
    final UserAuthStatus? authStatus;
    final String fcmToken;
    final String currentUser;
    final String? imageUrl;
    
    UserEntity({

           required this.userName,
           required this.email, 
           required this.fcmToken,
           this.imageUrl = '',
           this.authStatus = UserAuthStatus.logout,
           required this.currentUser
           
    });
    
} 