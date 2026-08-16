
import 'package:chat_app/features/auth/data/repository/user_repository_impl.dart';


class LogoutUseCase {
      
        final UserRepositoryImpl _userRepositoryImpl;
        LogoutUseCase(this._userRepositoryImpl);

        Future<void> call(){       
             return _userRepositoryImpl.logout();
        }
        
}