import 'package:createmy_flutter_template/core/template/template_view/template_base_cstmview.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobx/mobx.dart';

class TemplateView<T extends Store> extends StatefulWidget {
  // get request on the class
  const TemplateView({super.key, required this.instance, required this.onBuilder, required this.onReady, this.onDispose, required this.isCustomTemplate});

  // return class functions
  final bool isCustomTemplate;
  final Widget Function(BuildContext context, T model) onBuilder;
  final T instance;
  final void Function(T viewModel) onReady;
  final VoidCallback? onDispose;

  @override
  State<TemplateView<T>> createState() => _TemplateViewState<T>();
}

class _TemplateViewState<T extends Store> extends State<TemplateView<T>> {
  late T viewModel;
  @override
  void initState() {
    viewModel = widget.instance;
    widget.onReady(viewModel);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.onDispose != null) widget.onDispose!.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isCustomTemplate
        ? TemplateBaseCustomView(
            onBuilder: (context) => widget.onBuilder(context, widget.instance),
          )
        : widget.onBuilder(context, widget.instance);
  }
}
