import 'package:fluterando_mobx/aula04/client.dart';
import 'package:mobx/mobx.dart';

part 'client_controller.g.dart';

class ClientController = ClientBase with _$ClientController;

abstract class ClientBase with Store {
  var client = Client();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  String validateEmail() {
    print(client.email);
    if (client.email == null || client.email.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (!client.email.contains('@')) {
      return 'Email Inválido';
    }

    return null;
  }

  dispose() {}
}
