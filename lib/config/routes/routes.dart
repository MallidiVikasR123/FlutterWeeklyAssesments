import 'package:flutter/material.dart';
import 'package:task/widgets/background.dart';

import '../../views/home_screen.dart';
import '../routes/route_names.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouteNames.background:
        return MaterialPageRoute(
          builder: (_) => const Background(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
