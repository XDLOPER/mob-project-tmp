import 'package:createmy_flutter_template/core/init/navigation_management/navigation.dart';
import 'package:createmy_flutter_template/core/init/navigation_management/navigation_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../theme_management/theme_management.dart';

class ProvidersManagement {
  static ProvidersManagement? _instance;

  ProvidersManagement._init();

  List<SingleChildWidget> singleItems = [];
  List<SingleChildWidget> dependItems = [Provider.value(value: Navigation.instance)];
  List<SingleChildWidget> uiChangesItems = [
    ChangeNotifierProvider.value(
      value: ThemeManagement.instance,
    ),
  ];

  static ProvidersManagement get instance => _instance ??= ProvidersManagement._init();
}
