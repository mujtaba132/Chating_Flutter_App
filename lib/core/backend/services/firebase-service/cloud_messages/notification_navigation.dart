import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationNavigation {
      
        static void handleNavigation(RemoteMessage message){
           
           final String messageType  = message.data['type'];

           switch (messageType) {
             case 'chat':
                print('Moving toward Chat page');
               break;
             default:
               print('Moving toward Default Page'); 
           }
      }
}