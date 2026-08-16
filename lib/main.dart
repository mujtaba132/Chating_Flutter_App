import 'package:chat_app/core/backend/services/firebase_service/cloud_messages/cloud_messaging.dart';
import 'package:chat_app/core/backend/services/firebase_service/cloud_messages/notification_service.dart';
import 'package:chat_app/core/config/theme/theme-mode/app_theme.dart';
import 'package:chat_app/dependencies/service-loader/injection.dart';
import 'package:chat_app/features/auth/presentation/pages/create_account.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

void main() async{
  
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage((message) => _firebaseMessagingBackgroundHandler(message));
  _intailizeCloudMessaging();

  _appDependencies();

  runApp(const MyApp());
}

//Cloud Messages Background Handler
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message)async{
      await Firebase.initializeApp(
         options: DefaultFirebaseOptions.currentPlatform,
      );
}

//Cloud Messages Intailization at Top Level     
void _intailizeCloudMessaging(){

  final notificationService = NotificationService();
  final cloudMessaging = CloudMessaging(notificationService: notificationService);

  cloudMessaging.initialize();

}


//Set up app level Dependencies
void _appDependencies(){
      
      final serviceLoader = ServiceLoader();
      serviceLoader.setUpDependencies();

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: CreateAccountScreen(),
    );
  }
}

