abstract interface class CloudMessagingPlatform {

      void initialize();

      Future<String>? getFCMToken();

}