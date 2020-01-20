import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../client_controller.dart';

class BodyWidget extends StatelessWidget {
  TextField _textField({String label, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final clientController = Provider.of<ClientController>(context);

    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Observer(
                builder: (_) {
                  return _textField(
                    label: 'Name',
                    onChanged: clientController.client.changeName,
                    errorText: clientController.validateName,
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Observer(
                builder: (_) {
                  return _textField(
                    label: 'Email',
                    onChanged: clientController.client.changeEmail,
                    errorText: clientController.validateEmail,
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
              Observer(
                builder: (_) {
                  return RaisedButton(
                    onPressed: clientController.isValid ? () {} : null,
                    child: Text('Salvar '),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
