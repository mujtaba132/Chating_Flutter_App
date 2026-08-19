import 'package:chat_app/dependencies/service-loader/file_exports.dart';
import 'package:chat_app/features/chat/data/data-source/chat_data_source.dart';
import 'package:chat_app/features/chat/data/repository/chat_message_repository_impl.dart';
import 'package:chat_app/features/chat/domain/repository/chat_messages_repository.dart';
import 'package:chat_app/features/chat/domain/use-cases/chat_listen_use_case.dart';
import 'package:chat_app/features/chat/domain/use-cases/get_sender_use_case.dart';
import 'package:chat_app/features/chat/domain/use-cases/send_message_use_case.dart';
import 'package:chat_app/features/chat/presentation/bloc/chat_bloc/chat_bloc.dart';

final getIt = GetIt.instance;

final class ServiceLoader {
  final _cloudinary = CloudinaryPublic(
    'dx6o3ymbb',
    'chat_user_profile_data',
    cache: false,
  );
  final _firebaseAuth = FirebaseAuth.instance;
  final _firebaseFirestore = FirebaseFirestore.instance;
  final _notificationService = NotificationService();

  //all app services
  void setUpAppServices() {

    //Notification Service 
    getIt.registerLazySingleton<CloudMessagingPlatform>(() => CloudMessaging(notificationService: _notificationService));

    //MediaPicker Service
    getIt.registerLazySingleton<MediaPickerService>(
      () => MediaPickerServiceImpl(),
    );

    // Cloudinary Service and DataSource
    getIt.registerLazySingleton<CloudinaryService>(
      () => CloudinaryServiceImpl(_cloudinary),
    );

    //Firebase Auth Service and DataSource
    getIt.registerLazySingleton<FirebaseAuthService>(
      () => FirebaseAuthService(_firebaseAuth),
    );

    //Firebase Database Service and DataSource
    getIt.registerLazySingleton<CloudFirestoreService>(
      () => CloudFirebaseServiceImpl(firebaseFirestore: _firebaseFirestore),
    );
  }

  
//Cloud Messages Intailization at Top Level     
 void intailizeCloudMessaging(){

  getIt<CloudMessagingPlatform>().initialize();

}

  // auth dependencies and blocs
  void setUpAuthDependencies() {
    //cloudinary datasource
    getIt.registerLazySingleton<CloudinaryDataSource>(
      () => CloudinaryDataSource(getIt<CloudinaryService>()),
    );

    //authentication datasource
    getIt.registerLazySingleton<AuthDataSource>(
      () => AuthDataSource(getIt<FirebaseAuthService>()),
    );

    //firestore datasource
    getIt.registerLazySingleton<FirestoreDataSource>(
      () => FirestoreDataSource(
        cloudFirestoreService: getIt<CloudFirestoreService>(),
        cloudMessagingPlatform: getIt<CloudMessagingPlatform>()
      ),
    );

    //user Repo for Authentication
    getIt.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(
        authDataSource: getIt<AuthDataSource>(),
        cloudinaryDataSource: getIt<CloudinaryDataSource>(),
        firestoreDataSource: getIt<FirestoreDataSource>(),
      ),
    );

    // Authentication UseCases
    getIt.registerLazySingleton(() => RegisterUseCase(getIt<UserRepository>()));
    getIt.registerLazySingleton(() => LoginUseCase(getIt<UserRepository>()));
    getIt.registerLazySingleton(() => LogoutUseCase(getIt<UserRepository>()));
    getIt.registerLazySingleton(
      () => UploadImageUseCase(getIt<UserRepository>()),
    );
    getIt.registerLazySingleton(
      () => PickImageUseCase(getIt<MediaPickerService>()),
    );

    //Create User Account Bloc
    getIt.registerFactory(
      () => CreateAccountBloc(
        registerUseCase: getIt<RegisterUseCase>(),
        uploadImageUseCase: getIt<UploadImageUseCase>(),
        pickImageUseCase: getIt<PickImageUseCase>(),
      ),
    );

    //Login User Account Bloc
    getIt.registerFactory(() => LoginBloc(loginUseCase: getIt<LoginUseCase>()));
  }


  void setUpChatDependencies(){
       
       //chat DataCases 
       getIt.registerLazySingleton<ChatDataSource>(() => 
        ChatDataSource(cloudFirestoreService: getIt<CloudFirestoreService>(), 
        firebaseAuthService: getIt<FirebaseAuthService>()
        ));

      //chat repository
      getIt.registerLazySingleton<ChatMessagesRepository>(() => 
      ChatMessageRepositoryImpl(chatDataSource: getIt<ChatDataSource>()));
      
      //chat usecases
      //1. snd messages
      getIt.registerLazySingleton<SendMessageUseCase>(() =>
      SendMessageUseCase(chatMessagesRepository: getIt<ChatMessagesRepository>()));
      //2. load chat
      getIt.registerLazySingleton<ChatListenUseCase>(() =>
      ChatListenUseCase(chatMessagesRepository: getIt<ChatMessagesRepository>()));
      //3.get sender
      getIt.registerLazySingleton<GetSenderUseCase>(() =>
      GetSenderUseCase(chatMessagesRepository: getIt<ChatMessagesRepository>()));

      //chat bloc
      getIt.registerLazySingleton<ChatBloc>(() => ChatBloc(
        chatListenUseCase: getIt<ChatListenUseCase>(), 
        sendMessageUseCase: getIt<SendMessageUseCase>(), 
        getSenderUseCase: getIt<GetSenderUseCase>())
        );

  }
}
