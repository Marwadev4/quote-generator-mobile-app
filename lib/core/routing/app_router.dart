import 'package:flutter/material.dart';
import 'package:quote_generator_mobile_app/core/routing/routes.dart';
import 'package:quote_generator_mobile_app/features/favorites/ui/favorites_screen.dart';
import 'package:quote_generator_mobile_app/features/home/ui/home_screen.dart';

/// Manage Routes
class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case Routes.favoritesScreen:
        return MaterialPageRoute(builder: (context) => const FavoritesScreen());

      default:
        return MaterialPageRoute(
          builder:
              (context) =>
                  Scaffold(body: Text('No route defined for ${settings.name}')),
        );
    }
  }
}
