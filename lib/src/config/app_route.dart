import 'package:flutter/material.dart';
import 'package:my_stock/src/pages/map/map_page.dart';
import 'package:my_stock/src/pages/pages.dart';

class AppRoute {
  static const homeRoute = "home";
  static const loginRoute = "login";
  static const managementRoute = "management";
  static const mapRoute = "map";

  get route => _route;

  final _route = <String, WidgetBuilder> {
    homeRoute: (context) => HomePage(),
    loginRoute: (context) => LoginPage(),
    managementRoute: (content) => ManagementPage(),
    mapRoute: (content) => GoogleMapPage()
  };
}