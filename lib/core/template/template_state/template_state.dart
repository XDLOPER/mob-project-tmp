import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class TemplateState<T extends StatefulWidget> extends State<T> {
  // instances
  ThemeData get theme => Theme.of(context); 
  MediaQueryData get device => MediaQuery.of(context);


  //functions
  double dynamicHeight(double value) => device.size.height*value;
  double dynamicWidth(double value) => device.size.width*value;
}
