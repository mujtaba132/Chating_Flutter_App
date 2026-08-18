import '../repository/user_repository_interface.dart';


class LogoutUseCase {
      
        final UserRepository _userRepository;
        LogoutUseCase(this._userRepository);

        Future<void> call(){       
             return _userRepository.logout();
        }
        
}