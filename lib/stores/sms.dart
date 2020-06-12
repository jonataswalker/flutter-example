import 'package:mobx/mobx.dart';
import 'package:contacts_service/contacts_service.dart';

part 'sms.g.dart';

class SmsStore = _SmsStore with _$SmsStore;

abstract class _SmsStore with Store {
  @observable
  String message;

  @observable
  int messageLength;

  @observable
  Contact selectedContact;

  @computed
  String get displayName => selectedContact?.displayName;

  @action
  void setMessage(String msg) {
    message = msg;
    messageLength = message.length;
  }

  @action
  void setSelectedContact(Contact contact) {
    selectedContact = contact;
  }

  @action
  getSelectedContact() async {
    return selectedContact;
  }
}
