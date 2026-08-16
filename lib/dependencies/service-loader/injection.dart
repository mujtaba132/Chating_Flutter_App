import 'package:chat_app/core/backend/services/cloudinary-service/cloudinary_service_interface.dart';
import 'package:chat_app/core/backend/services/media-picker-service/media_picker_impl.dart';
import 'package:chat_app/features/auth/data/data-source/auth_data_source.dart';
import 'package:chat_app/features/auth/data/data-source/cloudinary_data_source.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import '../../core/backend/services/cloudinary-service/cloudinary_service_impl.dart';
import '../../core/backend/services/firebase-service/firebase_authentication/firebase_authentication_service.dart';
import '../../features/auth/data/repository/user_repository_impl.dart';

final class ServiceLoader{

     final _getit = GetIt.instance;

     final _cloudinary = CloudinaryPublic('dx6o3ymbb','chat_user_profile_data',cache: false);
     final _firebaseAuth = FirebaseAuth.instance;
     
      void setUpDependencies(){

           //MediaPicker Service      
           _getit.registerLazySingleton<MediaPickerService>(() => MediaPickerService());

           // Cloudinary Service and DataSource
           _getit.registerLazySingleton<CloudinaryServiceImpl>(()=>CloudinaryServiceImpl(_cloudinary));
           _getit.registerLazySingleton<CloudinaryDataSource>(()=>CloudinaryDataSource(_getit<CloudinaryServiceImpl>()));
          
           //Firebase Auth Service and DataSource
           _getit.registerLazySingleton<FirebaseAuthService>(()=>FirebaseAuthService(_firebaseAuth));
           _getit.registerLazySingleton<AuthDataSource>(()=>AuthDataSource(_getit<FirebaseAuthService>()));
           
           //----- User Repo for Authentication
           _getit.registerLazySingleton<UserRepositoryImpl>(()=>UserRepositoryImpl(
            authDataSource: _getit<AuthDataSource>(),
            cloudinaryDataSource: _getit<CloudinaryDataSource>()
           ));
    
     }
     
}