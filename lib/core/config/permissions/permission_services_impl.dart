import 'package:app_settings/app_settings.dart';
import 'package:chat_app/core/config/permissions/permission_services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PermissionServices implements AppPermissionServices {

  @override
  Future<void> notificationPermission() async{
           
         FirebaseMessaging firbaseMessaging =  FirebaseMessaging.instance;
         
         NotificationSettings notificationSettings = await  firbaseMessaging.requestPermission(
            alert: true,
            announcement: true,
            badge: true,
            provisional: true,
            sound: true,
            criticalAlert: true,
            providesAppNotificationSettings: true,
            carPlay: true
         );

         if(notificationSettings.authorizationStatus == AuthorizationStatus.authorized){
              print('Permissions is granted');
         } else if(notificationSettings.authorizationStatus == AuthorizationStatus.provisional){
             print('user granted provitional permissions');
         } else if(notificationSettings.authorizationStatus == AuthorizationStatus.denied){
            print('user denied the notification Permissions');
            AppSettings.openAppSettings(type: AppSettingsType.notification);
         }
  }


}