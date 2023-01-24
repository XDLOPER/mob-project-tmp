import 'package:createmy_flutter_template/core/template/template_view/template_base_view.dart';
import './template-view-model.dart';

import 'package:flutter/widgets.dart';

class TemplateViewExample extends StatelessWidget {
  const TemplateViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TemplateView<TemplateViewModelExample>(
      instance: TemplateViewModelExample(),
      onBuilder: (context, model) => const Text('hello'),
      isCustomTemplate: true,
    );
  }
}
