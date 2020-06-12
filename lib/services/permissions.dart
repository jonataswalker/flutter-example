import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  static Future<void> requestPermission() async {
    PermissionStatus status = await Permission.contacts.request();

    if (status != PermissionStatus.granted) {
      handleInvalidPermissions(status);
    }
  }

  static void handleInvalidPermissions(status) {
    if (status == PermissionStatus.denied) {
      throw PlatformException(
          code: 'PERMISSION_DENIED',
          message: 'Acesso aos contatos negado!',
          details: null);
    }
  }

  static Future<Iterable> getContacts() async {
    return await ContactsService.getContacts();
  }
}
