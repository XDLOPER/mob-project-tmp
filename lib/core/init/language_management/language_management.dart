import 'dart:ui';

class LanguageManagement {
  static LanguageManagement? _instance;

  LanguageManagement._init();

  final trLocale = const Locale('tr', 'TR');

  List<Locale> get supportedLocale => [trLocale];
  static get instance => _instance ?? LanguageManagement._init();
}
