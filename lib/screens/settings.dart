import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:sms/stores/settings.dart';

class Settings extends StatelessWidget {

  Widget build(BuildContext context) {
    final settings = Provider.of<SettingsStore>(context);

    return Column(
      children: <Widget>[
        Observer(
            builder: (_) => SwitchListTile(
                title: Text('Dark mode'),
                value: settings.useDarkMode,
                onChanged: settings.setDarkMode,
                secondary: Icon(Icons.lightbulb_outline)))
      ],
    );
  }
}
