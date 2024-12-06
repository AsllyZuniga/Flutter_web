import 'package:flutter/material.dart';

class _NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routerName) {
    return navigatorKey.currentState!.pushNamed(routerName);
  }

  void goBack(String routerName) {
    return navigatorKey.currentState!.pop();
  }
}

final navigationService = new _NavigationService();
