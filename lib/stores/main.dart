import 'package:mobx/mobx.dart';
import 'package:sms/stores/navigation.dart';
import 'package:sms/stores/settings.dart';
import 'package:sms/stores/sms.dart';

part 'main.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {
  final settings = SettingsStore();
  final navigation = NavigationStore();
  final sms = SmsStore();
}
