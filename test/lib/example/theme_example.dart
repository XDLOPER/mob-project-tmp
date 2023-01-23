import 'package:createmy_flutter_template/core/init/notifier_management/theme_management/theme_management.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeExample extends StatelessWidget {
  final BuildContext context;
  const ThemeExample({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(this.context.watch<ThemeManagement>().themeName.toString()),
        ),
        FloatingActionButton(
          onPressed: () => ThemeManagement.instance.themeChanges(),
          child: Text('bas'),
        )
      ],
    );
  }
}
