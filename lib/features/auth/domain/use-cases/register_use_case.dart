
import 'package:chat_app/features/auth/data/repository/user_repository_impl.dart';

import '../entities/user_entity.dart';

class RegisterUseCase {
      
        final UserRepositoryImpl _userRepositoryImpl;
        RegisterUseCase(this._userRepositoryImpl);

        Future<UserEntity> call({
          required String userName,
          required String email,
          required String password,
          required String imageUrl
        }){
             
             return _userRepositoryImpl.register(userName,email, password,imageUrl);
        }

}