import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:sms/stores/navigation.dart';
import 'package:sms/stores/settings.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    final settings = Provider.of<SettingsStore>(context);
    final navigation = Provider.of<NavigationStore>(context);
    return Observer(
      builder: (_) => MaterialApp(
        title: 'SMS App',
        theme: ThemeData(
          fontFamily: 'Lato',
          primarySwatch: Colors.teal,
          brightness:
              settings.useDarkMode == true ? Brightness.dark : Brightness.light,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text('SMS App')),
          body: Container(child: navigation.selectScreen()),
          bottomNavigationBar: BottomNavigationBar(
            // backgroundColor: Colors.teal,
            // type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.contacts), title: Text('Contatos')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_applications),
                  title: Text('Configurações')),
            ],
            onTap: navigation.setSelectedIndex,
            currentIndex: navigation.selectedIndex,
          ),
        ),
      ),
    );
  }
}
