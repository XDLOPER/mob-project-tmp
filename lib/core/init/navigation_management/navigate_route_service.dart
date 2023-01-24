import 'package:flutter/material.dart';

abstract class NavigateRouteService {
  Route generateRoute(RouteSettings args);
  MaterialPageRoute route(Widget widget, String pageName);
}
