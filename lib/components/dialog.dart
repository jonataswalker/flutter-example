import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

Future<void> showSmsDialog(context, sms) async {
  await showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title:
            Observer(builder: (_) => Text('Mensagem para: ${sms.displayName}')),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Observer(
                  builder: (_) => TextField(
                        autofocus: true,
                        minLines: 3,
                        maxLines: 5,
                        // controller: TextEditingController(text: sms.displayName),
                        onChanged: (value) {
                          sms.setMessage(value);
                        },
                        decoration: InputDecoration(
                            labelText: 'Mensagem',
                            border: OutlineInputBorder(),
                            helperText: '${sms.messageLength} caracteres'),
                      )),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
  sms.setMessage('');
}
