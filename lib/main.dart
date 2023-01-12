import 'package:createmy_flutter_template/viewmodel.dart';
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
      home: TemplateView<ExampleviewModel>(
        isCustomTemplate: true,
        instance: ExampleviewModel(),
        onReady: (viewModel) => _model = viewModel,
        onBuilder: (context, model) => const Scaffold(
          body: Center(child: Text('hello worlds!')),
        ),
      ),
    );
  }
}
