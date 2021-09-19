// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es';

  static String m0(actual, max) => "Agregar una tarea: ${actual} de ${max}";

  static String m1(maxLength) => "excediendo la longitud maxima: ${maxLength}";

  static String m2(max) => "la lista de tareas está llena (${max})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addATodo": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cancelByUser":
            MessageLookupByLibrary.simpleMessage("Cancelado por el usuario"),
        "cannotBeEmpty":
            MessageLookupByLibrary.simpleMessage("no puede estar vacío"),
        "createANote": MessageLookupByLibrary.simpleMessage("Crear una nota"),
        "delete": MessageLookupByLibrary.simpleMessage("Eliminar"),
        "detailsForNerds":
            MessageLookupByLibrary.simpleMessage("detalles para nerds"),
        "editANote": MessageLookupByLibrary.simpleMessage("Editar una nota"),
        "email": MessageLookupByLibrary.simpleMessage("Correo Electronico"),
        "emailAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "este correo electrónico ya está en uso"),
        "exceeddingLength": m1,
        "iNeedHelp": MessageLookupByLibrary.simpleMessage("Necesito ayuda"),
        "imposibleError":
            MessageLookupByLibrary.simpleMessage("ERROR IMPOSIBLE:"),
        "invalidEmail":
            MessageLookupByLibrary.simpleMessage("Correo Introducido invalido"),
        "invalidInputs": MessageLookupByLibrary.simpleMessage(
            "algunas entradas no son válidas"),
        "invalidNote": MessageLookupByLibrary.simpleMessage("Nota no válida"),
        "note": MessageLookupByLibrary.simpleMessage("Nota"),
        "notesOf": MessageLookupByLibrary.simpleMessage("notas de"),
        "onlyOneLine": MessageLookupByLibrary.simpleMessage(
            "Debe estar en una sola línea"),
        "passwaord": MessageLookupByLibrary.simpleMessage("Contraseña"),
        "pelaseContactSupport": MessageLookupByLibrary.simpleMessage(
            "Póngase en contacto con el soporte técnico, por favor"),
        "permissionDenied":
            MessageLookupByLibrary.simpleMessage("permiso denegado"),
        "pickAColor": MessageLookupByLibrary.simpleMessage("Elija un color"),
        "pleaseRestart":
            MessageLookupByLibrary.simpleMessage("reinicia la aplicación"),
        "register": MessageLookupByLibrary.simpleMessage("Registrarse"),
        "saving": MessageLookupByLibrary.simpleMessage(
            "Guardando, por favor espere..."),
        "select": MessageLookupByLibrary.simpleMessage("Seleccionar"),
        "selectedNote":
            MessageLookupByLibrary.simpleMessage("Nota seleccionada:"),
        "serverError":
            MessageLookupByLibrary.simpleMessage("Algo sucede con el servidor"),
        "shortPassword":
            MessageLookupByLibrary.simpleMessage("Contraseña demaciado corta"),
        "singIn": MessageLookupByLibrary.simpleMessage("Ingresar"),
        "singInWithGoogle":
            MessageLookupByLibrary.simpleMessage("Ingresar con Google"),
        "todo": MessageLookupByLibrary.simpleMessage("Tarea"),
        "todosListMaxed": m2,
        "unableToUpdate": MessageLookupByLibrary.simpleMessage(
            "no se puede actualizar, inténtalo más tarde"),
        "unexpected": MessageLookupByLibrary.simpleMessage("Error inesperado"),
        "unrecoverableError":
            MessageLookupByLibrary.simpleMessage("ERROR IRECUPERABLE")
      };
}
