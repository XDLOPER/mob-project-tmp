import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TemplateBaseCustomView extends StatefulWidget {
  const TemplateBaseCustomView({super.key, required this.onBuilder});
  final Function(BuildContext context) onBuilder;

  @override
  State<TemplateBaseCustomView> createState() => _TemplateBaseCustomViewState();
}

class _TemplateBaseCustomViewState extends State<TemplateBaseCustomView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: _Body(
        onBuilder: widget.onBuilder,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final Function onBuilder;
  const _Body({Key? key, required this.onBuilder}) : super(key: key);

  @override
  Widget build(BuildContext context) => onBuilder(context);
}
