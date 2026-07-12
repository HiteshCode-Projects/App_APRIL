import 'package:firebase_messaging/firebase_messaging.dart';

//Notification
class NotificationService {
  static Future initialze() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    await messaging.requestPermission();

    String? token = await messaging.getToken();

    print("Device Token");
    print(token);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("Notification Recieved");

      print(message.notification?.title);

       print(message.notification?.body);
    });
  }
}
