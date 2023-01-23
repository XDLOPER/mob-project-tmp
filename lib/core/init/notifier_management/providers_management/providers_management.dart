import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../theme_management/theme_management.dart';

class ProvidersManagement {
  static ProvidersManagement? _instance;

  ProvidersManagement._init();

  List<SingleChildWidget> singleItems = [];
  List<SingleChildWidget> dependItems = [];
  List<SingleChildWidget> uiChangesItems = [
    ChangeNotifierProvider.value(
      value: ThemeManagement.instance,
    ),
  ];

  static ProvidersManagement get instance => _instance ??= ProvidersManagement._init();
}
