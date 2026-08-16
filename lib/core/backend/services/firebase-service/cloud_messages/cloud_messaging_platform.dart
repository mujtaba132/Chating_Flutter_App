abstract interface class CloudMessagingPlatform {

      Future<void> initialize();

      Future<String>? getFCMToken();

}