import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNotificationHandler {
  static Future<String> getDeviceToken() async {
    return await FirebaseMessaging.instance.getToken().then((value) => value!);
  }
}
