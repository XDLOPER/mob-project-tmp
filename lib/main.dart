import 'package:easy_localization/easy_localization.dart';
import 'package:extensions/string_extensions/string_extensions.dart';
import 'package:flutter/material.dart';

import 'core/init/language_management/language_management.dart';
import 'core/constants/app_constants.dart';
import 'core/init/language_management/locale_keys.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: LanguageManagement.instance.supportedLocale,
      path: AppConstans.LANG_ASSET_PATH,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(context.deviceLocale);
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Scaffold(
        body: Center(child: Text(LocaleKeys.welcome.locale)),
      ),
    );
  }
}
