import '../repository/user_repository_interface.dart';

class RegisterUseCase {
      
        final UserRepository _userRepository;
        RegisterUseCase(this._userRepository);

        Future<void> call({
          required String userName,
          required String email,
          required String password,
          required String imageUrl
        }) async{
             
            await _userRepository.register(userName,email, password,imageUrl);
        }


}