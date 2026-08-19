import 'package:chat_app/core/config/theme/theme-mode/app_theme.dart';
import 'package:chat_app/core/helper/messenger/app_messenger.dart';
import 'package:chat_app/dependencies/service-loader/app_dependencies.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/routes/route.dart';
import 'package:chat_app/routes/route_service.dart';
import 'package:chat_app/routes/routes_name.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

void main() async{
  
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  AppDependencies.attach();

  FirebaseMessaging.onBackgroundMessage((message) => _firebaseMessagingBackgroundHandler(message));

  runApp(const MyApp());
}

//Cloud Messages Background Handler
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message)async{
      await Firebase.initializeApp(
         options: DefaultFirebaseOptions.currentPlatform,
      );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      scaffoldMessengerKey: scaffoldMessengerKey,

      initialRoute: RoutesName.chatPage,
      onGenerateRoute: AppRoute.generateRoutes,
      navigatorKey: RouteService.navigatorState,

      title: 'Chat App',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,

    );
  }
}



