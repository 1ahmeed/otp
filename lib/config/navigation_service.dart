import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


class NavigationService {

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  dynamic routeTo(String route, {dynamic arguments}) {
    return navigatorKey.currentState?.pushNamed(route, arguments: arguments);
  }
  dynamic pushTo(Widget route,) {
    return navigatorKey.currentState?.push(MaterialPageRoute(builder: (context) =>route ));
  }
  dynamic push(PageRouteInfo<dynamic> route) {
    return navigatorKey.currentState?.context.pushRoute(route);
  }

  dynamic goBack() {
    return navigatorKey.currentState?.pop();
  }
}