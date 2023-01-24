import 'package:createmy_flutter_template/core/init/navigation_management/navigation_service.dart';
import 'package:flutter/cupertino.dart';

class Navigation implements NavigationServices {
  static final Navigation _instance = Navigation._init();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  final removeAllOldRoutes = (Route<dynamic> route) => false;

  Navigation._init();
  static get instance => _instance;

  @override
  Future<void> navigateToPage({String? path, Object? data}) async {
    await navigatorKey.currentState!.pushNamed(path!, arguments: data);
  }

  @override
  Future<void> navigateToPageClear({String? path, Object? data}) async {
    await navigatorKey.currentState!.pushNamedAndRemoveUntil(path!, removeAllOldRoutes, arguments: data);
  }
}
