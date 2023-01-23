import 'dart:math';

import 'package:createmy_flutter_template/core/init/language_management/language_management.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:extensions/string_extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'core/constants/app_constants.dart';
import 'package:test/example/lang_example.dart';

import 'core/init/language_management/locale_keys.g.dart';

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
}

Future<void> main() async {
  // init async plugin
  await _init();
  // finaly

  runApp(
    EasyLocalization(
      supportedLocales: LanguageManagement.instance.supportedLocale,
      path: AppConstans.LANG_ASSET_PATH,
      fallbackLocale: LanguageManagement.instance.enLocale,
      saveLocale: false,
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const Application(),
    );
  }
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const _AppBody();
  }
}

class _AppBody extends StatelessWidget {
  const _AppBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lang(
      locale: context.locale,
      context: context,
    );
  }
}
