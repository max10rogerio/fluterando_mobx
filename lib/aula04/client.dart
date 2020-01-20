import 'package:mobx/mobx.dart';

part 'client.g.dart';

class Client = ClientBase with _$Client;

abstract class ClientBase with Store {
  @observable
  String name;

  @observable
  String email;

  @observable
  String cpf;

  @action
  changeName(String value) => name = value;

  @action
  changeEmail(String value) => email = value;

  @action
  changeCpf(String value) => cpf = value;
}
