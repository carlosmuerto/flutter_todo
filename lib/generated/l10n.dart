// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message(
      'Note',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwaord {
    return Intl.message(
      'Password',
      name: 'passwaord',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get singIn {
    return Intl.message(
      'Sign in',
      name: 'singIn',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get singInWithGoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'singInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `invalid Email enter`
  String get invalidEmail {
    return Intl.message(
      'invalid Email enter',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `too short Password`
  String get shortPassword {
    return Intl.message(
      'too short Password',
      name: 'shortPassword',
      desc: '',
      args: [],
    );
  }

  /// `Canceled by the user`
  String get cancelByUser {
    return Intl.message(
      'Canceled by the user',
      name: 'cancelByUser',
      desc: '',
      args: [],
    );
  }

  /// `Some happend in the Server`
  String get serverError {
    return Intl.message(
      'Some happend in the Server',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `this Email is already in user`
  String get emailAlreadyInUse {
    return Intl.message(
      'this Email is already in user',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `some imput are invalid`
  String get invalidInputs {
    return Intl.message(
      'some imput are invalid',
      name: 'invalidInputs',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected Error`
  String get unexpected {
    return Intl.message(
      'Unexpected Error',
      name: 'unexpected',
      desc: '',
      args: [],
    );
  }

  /// `please restart the App`
  String get pleaseRestart {
    return Intl.message(
      'please restart the App',
      name: 'pleaseRestart',
      desc: '',
      args: [],
    );
  }

  /// `unable to update try later`
  String get unableToUpdate {
    return Intl.message(
      'unable to update try later',
      name: 'unableToUpdate',
      desc: '',
      args: [],
    );
  }

  /// `permission denied`
  String get permissionDenied {
    return Intl.message(
      'permission denied',
      name: 'permissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `IMPOSIBLE ERROR:`
  String get imposibleError {
    return Intl.message(
      'IMPOSIBLE ERROR:',
      name: 'imposibleError',
      desc: '',
      args: [],
    );
  }

  /// `To do`
  String get todo {
    return Intl.message(
      'To do',
      name: 'todo',
      desc: '',
      args: [],
    );
  }

  /// `I Need Help`
  String get iNeedHelp {
    return Intl.message(
      'I Need Help',
      name: 'iNeedHelp',
      desc: '',
      args: [],
    );
  }

  /// `'s notes`
  String get notesOf {
    return Intl.message(
      '\'s notes',
      name: 'notesOf',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Invalid note`
  String get invalidNote {
    return Intl.message(
      'Invalid note',
      name: 'invalidNote',
      desc: '',
      args: [],
    );
  }

  /// `details for Nerds`
  String get detailsForNerds {
    return Intl.message(
      'details for Nerds',
      name: 'detailsForNerds',
      desc: '',
      args: [],
    );
  }

  /// `Pelase contact tecnical support`
  String get pelaseContactSupport {
    return Intl.message(
      'Pelase contact tecnical support',
      name: 'pelaseContactSupport',
      desc: '',
      args: [],
    );
  }

  /// `Selected Note:`
  String get selectedNote {
    return Intl.message(
      'Selected Note:',
      name: 'selectedNote',
      desc: '',
      args: [],
    );
  }

  /// `Edit a note`
  String get editANote {
    return Intl.message(
      'Edit a note',
      name: 'editANote',
      desc: '',
      args: [],
    );
  }

  /// `Create a note`
  String get createANote {
    return Intl.message(
      'Create a note',
      name: 'createANote',
      desc: '',
      args: [],
    );
  }

  /// `UNRECOVERABLE ERROR`
  String get unrecoverableError {
    return Intl.message(
      'UNRECOVERABLE ERROR',
      name: 'unrecoverableError',
      desc: '',
      args: [],
    );
  }

  /// `exceedding Length, max: {maxLength}`
  String exceeddingLength(Object maxLength) {
    return Intl.message(
      'exceedding Length, max: $maxLength',
      name: 'exceeddingLength',
      desc: '',
      args: [maxLength],
    );
  }

  /// `cannot be empty`
  String get cannotBeEmpty {
    return Intl.message(
      'cannot be empty',
      name: 'cannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Pick a color`
  String get pickAColor {
    return Intl.message(
      'Pick a color',
      name: 'pickAColor',
      desc: '',
      args: [],
    );
  }

  /// `Add a todo: {actual} of {max}`
  String addATodo(Object actual, Object max) {
    return Intl.message(
      'Add a todo: $actual of $max',
      name: 'addATodo',
      desc: '',
      args: [actual, max],
    );
  }

  /// `todos list is full ({max})`
  String todosListMaxed(Object max) {
    return Intl.message(
      'todos list is full ($max)',
      name: 'todosListMaxed',
      desc: '',
      args: [max],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Has to be in a single line`
  String get onlyOneLine {
    return Intl.message(
      'Has to be in a single line',
      name: 'onlyOneLine',
      desc: '',
      args: [],
    );
  }

  /// `Saving, please wait...`
  String get saving {
    return Intl.message(
      'Saving, please wait...',
      name: 'saving',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
