import 'package:drop_check/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  // create an instance of Firebase
  final _firebaseMessaging = FirebaseMessaging.instance;

  // function to initialize notifications
  Future<void> initNotifications() async {
    // request permssion from user
    await _firebaseMessaging.requestPermission();

    // fetcg the FCM
    final fCMToken = await _firebaseMessaging.getToken();

    // print the token
    print('Token: $fCMToken');

    initPushNotifications();
  }

  // function to handle
  void handleMessage(RemoteMessage? message) {
    if (message == null) return;

    navigatorKey.currentState?.pushNamed(
      '/notification_screen',
      arguments: message,
    );
  }

  //function to initialize
  Future initPushNotifications() async {
    // handle
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    // attach
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
