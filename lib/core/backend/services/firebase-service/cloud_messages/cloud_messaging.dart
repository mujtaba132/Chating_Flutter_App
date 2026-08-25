import 'dart:io';
import 'package:chat_app/core/backend/services/firebase-service/cloud_messages/cloud_messaging_platform.dart';
import 'package:chat_app/core/backend/services/firebase-service/cloud_messages/notification_navigation.dart';
import 'package:chat_app/core/backend/services/firebase-service/cloud_messages/notification_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';



class CloudMessaging implements CloudMessagingPlatform{

  final NotificationService _notificationService;
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  CloudMessaging({required  this._notificationService});
  

  @override
  void initialize(){
         
         _listentoForegroundMessages();
         _listentoBackgroundTaps();
         _listentoTerminatedTaps();
         _listenTOFCMToken();
        
  }

  

  void _listentoForegroundMessages(){
         
         FirebaseMessaging.onMessage.listen((newMessage){

               if(Platform.isAndroid){
                    _notificationService.initailize(message: newMessage);
                    _notificationService.showNotification(message: newMessage);
               }else{
                    _notificationService.showNotification(message: newMessage);
               }
                 
         });
       
  }

  void _listentoBackgroundTaps(){
          
          FirebaseMessaging.onMessageOpenedApp.listen((newMessage){
                NotificationNavigation.handleNavigation(newMessage);
          });

  }

  Future<void> _listentoTerminatedTaps() async{

          final initailMessage = await _firebaseMessaging.getInitialMessage();
          if(initailMessage!=null){
              NotificationNavigation.handleNavigation(initailMessage);
          }

  }


  void _listenTOFCMToken(){
       
        _firebaseMessaging.onTokenRefresh.listen((newToken){
                

        });
  }


  @override
  Future<String>? getFCMToken() async{
      String? token = await _firebaseMessaging.getToken();
      return token ?? '';
  }


}

