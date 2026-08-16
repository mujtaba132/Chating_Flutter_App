
import 'package:chat_app/features/auth/data/repository/user_repository_impl.dart';

import '../entities/user_entity.dart';

class LoginUseCase {
      
        final UserRepositoryImpl _userRepositoryImpl;
        LoginUseCase(this._userRepositoryImpl);

        Future<UserEntity> call({
          required String email,
          required String password
        }){
             
             return _userRepositoryImpl.login(email, password);
        }
        
}