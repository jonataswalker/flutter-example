import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:sms/screens/contacts.dart';
import 'package:sms/screens/home.dart';
import 'package:sms/screens/settings.dart';

part 'navigation.g.dart';

class NavigationStore = _NavigationStore with _$NavigationStore;

abstract class _NavigationStore with Store {
  @observable
  int selectedIndex = 0;

  @action
  setSelectedIndex(index) {
    selectedIndex = index;
  }

  @action
  selectScreen() {
    final List<Widget> screens = <Widget>[Home(), Contacts(), Settings()];

    return screens.elementAt(selectedIndex);
  }
}
