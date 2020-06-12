import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sms/components/dialog.dart';
import 'package:sms/services/permissions.dart';
import 'package:sms/stores/sms.dart';

class Contacts extends StatelessWidget {
  Widget build(BuildContext context) {
    final sms = Provider.of<SmsStore>(context);
    return Row(
      children: <Widget>[
        Expanded(
            child: FutureBuilder(
          future: PermissionService.getContacts(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                    SizedBox(
                        child: CircularProgressIndicator(),
                        width: 30,
                        height: 30),
                    Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text('carregando ...'))
                  ]));
            }

            if (snapshot.hasError) {
              return Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                    Icon(Icons.error_outline, color: Colors.red, size: 60),
                    Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text('Erro: ${snapshot.error}'))
                  ]));
            }

            final values = snapshot.data;
            return ListView.builder(itemBuilder: (context, index) {
              Contact contact = values?.elementAt(index);
              final mappedPhones = contact.phones.map((e) => e.value);

              return Card(
                child: ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text(contact.displayName),
                  subtitle: Text(mappedPhones.join(', ')),
                  onTap: () => [
                    sms.setSelectedContact(contact),
                    showSmsDialog(context, sms)
                  ],
                ),
              );
            });
          },
        ))
      ],
    );
  }
}
