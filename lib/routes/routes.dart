import 'package:flutter/material.dart';

import 'package:maps_app/models/models.dart';
import 'package:maps_app/screens/screens.dart';

class AppRoutes {
  static final initialRoute = GpsAccessScreen.routeName;

  static final routesList = <RouteScreen>[
    RouteScreen(
      routeName: GpsAccessScreen.routeName,
      screen: const GpsAccessScreen(),
    ),
    RouteScreen(
      routeName: MapScreen.routeName,
      screen: const MapScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final route in routesList) {
      appRoutes.addAll({
        route.routeName: (BuildContext context) => route.screen,
      });
    }

    return appRoutes;
  }
}
