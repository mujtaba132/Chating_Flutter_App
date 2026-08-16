import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/helper/utlils/enum/enum.dart';
 
part 'user_model.freezed.dart';
part 'user_model.g.dart';
 
@freezed
abstract class UserModel with _$UserModel{
       
    const factory UserModel({
          required String fullName,
          required String email,

          @Default(UserAuthStatus.logout) UserAuthStatus? authStatus,

          @Default('') String? imageURL,
          @Default('') String? fcmToken,
          @Default('') String? userId,
     })=_UserModel;

    factory UserModel.fromJson(Map<String,dynamic> json) => _$UserModelFromJson(json);

    factory UserModel.fromFirebase(User user){
        return UserModel(
          fullName: user.displayName ?? '', 
          email: user.email!, 
          imageURL: user.photoURL,
          userId: user.uid
          );
    }

}