import 'package:flutter/material.dart';

abstract final class RouteService {

  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();

  static NavigatorState get navigator => navigatorState.currentState!;


  //Named Push
  static Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return navigator.pushNamed(routeName, arguments: arguments);
  }

  //Named PushReplacement
  static Future<T?> pushReplacemnetNamed<T, To>(
    String routeName, {
    Object? arguments,
  }) {
    return navigator.pushReplacementNamed(routeName, arguments: arguments);
  }

  //PushNamed and RemoveUntil
  static Future<T?> pushNamedAndRemoveUntil<T, TO>(
    String routeName,
    RoutePredicate pradicate, {
    Object? arguments,
  }) {
    return navigator.pushNamedAndRemoveUntil(
      routeName,
      pradicate,
      arguments: arguments,
    );
  }

  //Pop the current Screen
  static void pop<T>([T? result]) {
    return navigator.pop(result);
  }

}
