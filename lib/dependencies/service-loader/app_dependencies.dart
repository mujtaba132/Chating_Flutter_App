import 'package:chat_app/dependencies/service-loader/injection.dart';



abstract final class AppDependencies {
    
   static final ServiceLoader serviceLoader = ServiceLoader();


   //Set up app level Dependencies
   static void attach(){

      //app services
      serviceLoader.setUpAppServices();
     
      // cloud messaging initalization
      serviceLoader.intailizeCloudMessaging();

      //auth dependencies
      serviceLoader.setUpAuthDependencies();

      //chat dependencies
      serviceLoader.setUpChatDependencies();
   
   }

}