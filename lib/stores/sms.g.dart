// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SmsStore on _SmsStore, Store {
  Computed<String> _$displayNameComputed;

  @override
  String get displayName =>
      (_$displayNameComputed ??= Computed<String>(() => super.displayName,
              name: '_SmsStore.displayName'))
          .value;

  final _$messageAtom = Atom(name: '_SmsStore.message');

  @override
  String get message {
    _$messageAtom.reportRead();
    return super.message;
  }

  @override
  set message(String value) {
    _$messageAtom.reportWrite(value, super.message, () {
      super.message = value;
    });
  }

  final _$messageLengthAtom = Atom(name: '_SmsStore.messageLength');

  @override
  int get messageLength {
    _$messageLengthAtom.reportRead();
    return super.messageLength;
  }

  @override
  set messageLength(int value) {
    _$messageLengthAtom.reportWrite(value, super.messageLength, () {
      super.messageLength = value;
    });
  }

  final _$selectedContactAtom = Atom(name: '_SmsStore.selectedContact');

  @override
  Contact get selectedContact {
    _$selectedContactAtom.reportRead();
    return super.selectedContact;
  }

  @override
  set selectedContact(Contact value) {
    _$selectedContactAtom.reportWrite(value, super.selectedContact, () {
      super.selectedContact = value;
    });
  }

  final _$getSelectedContactAsyncAction =
      AsyncAction('_SmsStore.getSelectedContact');

  @override
  Future getSelectedContact() {
    return _$getSelectedContactAsyncAction
        .run(() => super.getSelectedContact());
  }

  final _$_SmsStoreActionController = ActionController(name: '_SmsStore');

  @override
  void setMessage(String msg) {
    final _$actionInfo =
        _$_SmsStoreActionController.startAction(name: '_SmsStore.setMessage');
    try {
      return super.setMessage(msg);
    } finally {
      _$_SmsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedContact(Contact contact) {
    final _$actionInfo = _$_SmsStoreActionController.startAction(
        name: '_SmsStore.setSelectedContact');
    try {
      return super.setSelectedContact(contact);
    } finally {
      _$_SmsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
message: ${message},
messageLength: ${messageLength},
selectedContact: ${selectedContact},
displayName: ${displayName}
    ''';
  }
}
