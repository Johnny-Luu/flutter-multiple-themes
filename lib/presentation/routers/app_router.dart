import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/constants/route_constant.dart';
import 'package:flutter_clean_architecture/domain/constants/string_constant.dart';
import 'package:flutter_clean_architecture/domain/exceptions/route_exception.dart';
import 'package:flutter_clean_architecture/presentation/screens/home/home_screen.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(title: Strings.homeTitle),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
