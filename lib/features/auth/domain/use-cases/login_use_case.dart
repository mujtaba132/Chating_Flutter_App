

import '../entities/user_entity.dart';
import '../repository/user_repository_interface.dart';

class LoginUseCase {
      
        final UserRepository _userRepository;
        LoginUseCase(this._userRepository);

        Future<UserEntity> call({
          required String email,
          required String password
        }){
             
             return _userRepository.login(email, password);
        }
        
}