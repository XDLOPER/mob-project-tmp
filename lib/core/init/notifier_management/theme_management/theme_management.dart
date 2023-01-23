import 'package:createmy_flutter_template/core/constants/enum/theme_enum.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme_interfaces.dart';
import 'package:theme/theme_light/theme_light.dart';
import 'package:theme/theme_dark/theme_dark.dart';

class ThemeManagement<L, D extends TemplateInterfaces> extends ChangeNotifier {
  static ThemeManagement<ThemeLight, ThemeDark>? _instance;
  ThemeManagement._init();
  bool _statusTheme = false;
  final ThemeData _themeLight = ThemeLight.instance;
  final ThemeData _themeDark = ThemeDark.instance;

  // theme change function
  void themeChanges() {
    _statusTheme = !_statusTheme;
    print('statusThemeCode ${instance.themeName}');
    notifyListeners();
  }

  String get themeName => _statusTheme ? ThemeEnum.DARK.name : ThemeEnum.LIGHT.name;
  get currentTheme => _statusTheme ? _themeDark : _themeLight;
  static ThemeManagement get instance => _instance ??= ThemeManagement._init();
}
