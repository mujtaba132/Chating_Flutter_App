import '../repository/user_repository_interface.dart';


class LogoutUseCase {
      
        final UserRepository _userRepository;
        LogoutUseCase(this._userRepository);

        Future<void> call({required String userId}){       
             return _userRepository.logout(userId);
        }
        
}