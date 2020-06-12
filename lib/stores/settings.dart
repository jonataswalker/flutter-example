import 'package:mobx/mobx.dart';

part 'settings.g.dart';

class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore with Store {
  @observable
  bool useDarkMode = true;

  @action
  void setDarkMode(bool value) {
    useDarkMode = value;
  }
}
