import '../entities/user_entity.dart';
import '../repository/user_repository_interface.dart';

class RegisterUseCase {
      
        final UserRepository _userRepository;
        RegisterUseCase(this._userRepository);

        Future<UserEntity> call({
          required String userName,
          required String email,
          required String password,
          required String imageUrl
        }){
             
             return _userRepository.register(userName,email, password,imageUrl);
        }

}