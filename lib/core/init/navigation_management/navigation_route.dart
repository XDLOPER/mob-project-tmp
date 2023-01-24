import 'package:flutter/material.dart';

import '../../constants/navigation/navigation_constant_path.dart';
import 'navigate_route_service.dart';

class NavigationRoute implements NavigateRouteService {
  static final NavigationRoute _instance = NavigationRoute._init();

  // navigate the page with flutter component
  @override
  MaterialPageRoute route(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,

      //analytciste görülecek olan sayfa ismi için pageName veriyoruz
      settings: RouteSettings(name: pageName),
    );
  }

  // definiations route
  @override
  Route generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstantsPath.DEFAULT:
        return route(const Text('this put the splash widget'), NavigationConstantsPath.DEFAULT);
      case NavigationConstantsPath.TEST_LANG_PATH:
        return route(const Text('this put the splash widget'), NavigationConstantsPath.TEST_LANG_PATH);
      case NavigationConstantsPath.TEST_THEME_PATH:
        return route(const Text('this put the splash widget'), NavigationConstantsPath.TEST_THEME_PATH);

      default:
        return MaterialPageRoute(
          builder: (context) => /* this put the notFoundWidget */ const Text('not found widget'),
        );
    }
  }

  NavigationRoute._init();
  static get instance => _instance;
}
