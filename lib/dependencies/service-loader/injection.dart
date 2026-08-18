import 'package:chat_app/core/backend/services/cloudinary-service/cloudinary_service_interface.dart';
import 'package:chat_app/core/backend/services/media-picker-service/media_picker_impl.dart';
import 'package:chat_app/core/backend/services/media-picker-service/media_picker_interface.dart';
import 'package:chat_app/features/auth/data/data-source/auth_data_source.dart';
import 'package:chat_app/features/auth/data/data-source/cloudinary_data_source.dart';
import 'package:chat_app/features/auth/domain/repository/user_repository_interface.dart';
import 'package:chat_app/features/auth/domain/use-cases/login_use_case.dart';
import 'package:chat_app/features/auth/domain/use-cases/logout_use_case.dart';
import 'package:chat_app/features/auth/domain/use-cases/pick_image_use_case.dart';
import 'package:chat_app/features/auth/domain/use-cases/register_use_case.dart';
import 'package:chat_app/features/auth/domain/use-cases/upload_image_use_case.dart';
import 'package:chat_app/features/auth/presentation/bloc/create-account/create_account_bloc.dart';
import 'package:chat_app/features/auth/presentation/bloc/login/bloc/login_bloc.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import '../../core/backend/services/cloudinary-service/cloudinary_service_impl.dart';
import '../../core/backend/services/firebase-service/firebase_authentication/firebase_authentication_service.dart';
import '../../features/auth/data/repository/user_repository_impl.dart';

final getIt = GetIt.instance;

final class ServiceLoader{

     final _cloudinary = CloudinaryPublic('dx6o3ymbb','chat_user_profile_data',cache: false);
     final _firebaseAuth = FirebaseAuth.instance;
     
      void setUpDependencies(){

           //MediaPicker Service      
           getIt.registerLazySingleton<MediaPickerService>(() => MediaPickerServiceImpl());

           // Cloudinary Service and DataSource
           getIt.registerLazySingleton<CloudinaryService>(()=>CloudinaryServiceImpl(_cloudinary));
           getIt.registerLazySingleton<CloudinaryDataSource>(()=>CloudinaryDataSource(getIt<CloudinaryService>()));
          
           //Firebase Auth Service and DataSource
           getIt.registerLazySingleton<FirebaseAuthService>(()=>FirebaseAuthService(_firebaseAuth));
           getIt.registerLazySingleton<AuthDataSource>(()=>AuthDataSource(getIt<FirebaseAuthService>()));
           
           //----- User Repo for Authentication
           getIt.registerLazySingleton<UserRepository>(()=>UserRepositoryImpl(
            authDataSource: getIt<AuthDataSource>(),
            cloudinaryDataSource: getIt<CloudinaryDataSource>()
           ));

           // Authentication UseCases
           getIt.registerLazySingleton(()=>RegisterUseCase(getIt<UserRepository>()));
           getIt.registerLazySingleton(()=>LoginUseCase(getIt<UserRepository>()));
           getIt.registerLazySingleton(()=>LogoutUseCase(getIt<UserRepository>()));
           getIt.registerLazySingleton(()=>UploadImageUseCase(getIt<UserRepository>()));
           getIt.registerLazySingleton(()=>PickImageUseCase(getIt<MediaPickerService>()));

           //Create User Account Bloc
           getIt.registerFactory(() => CreateAccountBloc(
              registerUseCase: getIt<RegisterUseCase>(),
              uploadImageUseCase: getIt<UploadImageUseCase>(),
              pickImageUseCase: getIt<PickImageUseCase>(),
            ));

           //Login User Account Bloc
           getIt.registerFactory(() => LoginBloc(
              loginUseCase: getIt<LoginUseCase>()
           ));
    
     }
     
}