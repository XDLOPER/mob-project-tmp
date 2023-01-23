import 'dart:ui';

class LanguageManagement {
  static LanguageManagement? _instance;

  LanguageManagement._init();

  final trLocale = const Locale('tr', 'TR');
  final enLocale = const Locale('en', 'US');

  List<Locale> get supportedLocale => [trLocale, enLocale];
  static get instance => _instance ?? (_instance = LanguageManagement._init());
}
