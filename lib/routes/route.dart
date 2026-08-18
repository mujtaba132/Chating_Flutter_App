import 'package:chat_app/routes/routes_export.dart';
import 'package:chat_app/routes/routes_name.dart';
import 'package:flutter/material.dart';

abstract final class AppRoute{

    static Route<dynamic> generateRoutes(RouteSettings settings){

      switch(settings.name){

             case RoutesName.createAccountPage:
               return  MaterialPageRoute(builder: (_) => CreateAccountScreen());
             case RoutesName.signInPage:
               return MaterialPageRoute(builder: (_) => SignInScreen()); 
             case RoutesName.chatPage:
                return MaterialPageRoute(builder: (_) => ChatPage());
             default:
               return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text('No Route Found!!...'))));
               
      }

    }    
}