import 'package:flutter/material.dart';

import 'core/template/template_view/template_base_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    late final _model;

    return MaterialApp(
      home: Text('hello'),
    );
  }
}
