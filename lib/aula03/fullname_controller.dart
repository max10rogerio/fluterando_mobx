import 'package:mobx/mobx.dart';

part 'fullname_controller.g.dart';

class FullNameController = FullNameBase with _$FullNameController;

abstract class FullNameBase with Store {
  @observable
  String firstName = '';

  @observable
  String lastName = '';

  @computed
  String get fullName => "$firstName $lastName";

  @action
  changeFirstName(String newName) {
    firstName = newName;
  }

  @action
  changeLastName(String newName) {
    lastName = newName;
  }
}
