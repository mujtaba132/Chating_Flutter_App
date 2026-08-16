import 'package:chat_app/core/backend/services/firebase_service/cloud_messages/notification_navigation.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
    
    final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();


    static const String _channelId = 'chat_messages';
    static const _channelName = 'Chat Messages';
    static const _channelDescription = 'Show Incoming Chat Messages';

     
    Future<void> initailize({RemoteMessage? message}) async{

            final androidInitializationSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
            final iosInitializationSettings = DarwinInitializationSettings();

            final initailizationSettings = InitializationSettings(
              android: androidInitializationSettings,
              iOS: iosInitializationSettings,
            );
            
            await _flutterLocalNotificationsPlugin.initialize(
              settings: initailizationSettings,
              onDidReceiveNotificationResponse: (detail){
                     if(message!=null){
                       NotificationNavigation.handleNavigation(message);
                     }
              }
            );

            await _createAndriodNotificationChannel();
     }


    Future<void> _createAndriodNotificationChannel() async{
            
            final AndroidNotificationChannel channel = AndroidNotificationChannel(
              _channelId, 
              _channelName,
              description: _channelDescription,
              importance: Importance.high,
              );

            await _flutterLocalNotificationsPlugin.
            resolvePlatformSpecificImplementation
            <AndroidFlutterLocalNotificationsPlugin>()?.
            createNotificationChannel(channel);

    }
    
    Future<void> showNotification({RemoteMessage? message}) async{

            final androidNotificationDetails = AndroidNotificationDetails(
                 _channelId,
                 _channelName,
                 channelDescription: _channelDescription,
                importance: Importance.max,
                icon: '@mipmap/ic_launcher',
                priority: Priority.high,
                ticker: 'tricker'
            );

            final iosNotificationDetails = DarwinNotificationDetails(
              presentSound: true,
              presentAlert: true,    
            );

            final notificationDetails = NotificationDetails(
              android: androidNotificationDetails,
              iOS: iosNotificationDetails);

             await _flutterLocalNotificationsPlugin.show(
                  id: message.hashCode,
                  title: message!.notification!.title ?? 'Message',
                  body: message.notification!.body ?? 'body',
                  notificationDetails: notificationDetails,   
                  payload: message.data['type']         
             ); 
   }
   
}