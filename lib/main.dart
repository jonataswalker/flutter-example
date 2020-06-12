import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sms/services/notification.dart';
import 'package:sms/services/permissions.dart';
import 'package:sms/stores/navigation.dart';
import 'package:sms/stores/settings.dart';
import 'package:sms/stores/sms.dart';
import 'package:sms/widgets/app.dart';

Future<void> main() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode) exit(1);
  };

  WidgetsFlutterBinding.ensureInitialized();
  await PermissionService.requestPermission();
  NotificationService.configure();
  runApp(MultiProvider(
    providers: [
      Provider<SettingsStore>(create: (_) => SettingsStore()),
      Provider<SmsStore>(create: (_) => SmsStore()),
      Provider<NavigationStore>(create: (_) => NavigationStore()),
    ],
    child: App(),
  ));
}
