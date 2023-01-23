import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:extensions/string_extensions/string_extensions.dart';
import 'package:createmy_flutter_template/core/init/language_management/locale_keys.g.dart';

class Lang extends StatefulWidget {
  late Locale locale;
  late BuildContext context;
  Lang({super.key, required this.locale, required this.context});

  @override
  State<Lang> createState() => _LangState();
}

class _LangState extends State<Lang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SizedBox(
          width: 30,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            foregroundColor: Colors.blue,
            child: const Icon(Icons.language),
            onPressed: () {
              int value = Random().nextInt(2);
              context.setLocale(context.supportedLocales[value]);

              print(value);
            },
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(LocaleKeys.template_subAppName.locale), Text(this.context.locale.toString())],
        ),
      ),
    );
    ;
  }
}
