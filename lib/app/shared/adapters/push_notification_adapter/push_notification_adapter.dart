import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class PushNotificationAdapter {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  Future<String?> getToken() async {
    if (GetPlatform.isIOS) {
      await _messaging.requestPermission();
      await _messaging.setForegroundNotificationPresentationOptions(badge: true, sound: true);
    }

    return _messaging.getToken();
  }

  Future<void> subscribeToTopic(String topic) {
    return _messaging.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic(String topic) {
    return _messaging.unsubscribeFromTopic(topic);
  }

  void init({Function(RemoteMessage)? onMessage, Function(RemoteMessage)? onMessageOpenedApp}) {
    FirebaseMessaging.onMessage.listen(onMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(onMessageOpenedApp);
  }
}