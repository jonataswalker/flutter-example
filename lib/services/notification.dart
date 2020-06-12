import 'package:firebase_messaging/firebase_messaging.dart';

final FirebaseMessaging notification = FirebaseMessaging();

Future<void> myBackgroundMessageHandler(Map<String, dynamic> message) async {
  if (message.containsKey('data')) {
    // Handle data message
    final dynamic data = message['data'];
    print('onBackgroundMessage data: $data');
  }

  if (message.containsKey('notification')) {
    // Handle notification message
    final dynamic notification = message['notification'];
    print('onBackgroundMessage notification: $notification');
  }
}

class NotificationService {
  static void configure() {
    notification.configure(
      onMessage: (message) async {
        print('onMessage: $message');
      },
      onLaunch: (message) async {
        print('onLaunch: $message');
      },
      onResume: (message) async {
        print('onResume: $message');
      },
      onBackgroundMessage: myBackgroundMessageHandler,
    );

    notification.requestNotificationPermissions(const IosNotificationSettings(
        sound: true, badge: true, alert: true, provisional: true));

    notification.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });

    notification.getToken().then((String token) {
      assert(token != null);
      print('getToken: $token');
    });
  }
}
