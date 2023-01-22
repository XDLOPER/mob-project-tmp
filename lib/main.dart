// localization imported
import 'package:createmy_flutter_template/core/init/language_management/language_management.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:extensions/string_extensions/string_extensions.dart';

// required depends
import 'package:flutter/material.dart';
import 'core/constants/app_constants.dart';

void main() async {
  // init easy_localizations plugin
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  //
  runApp(
    EasyLocalization(
      supportedLocales: LanguageManagement.instance.supportedLocale,
      fallbackLocale: LanguageManagement.instance.enLocale,
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
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const Scaffold(
        body: Center(child: Text('hello')),
      ),
    );
  }
}
