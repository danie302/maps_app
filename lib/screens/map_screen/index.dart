import 'package:flutter/material.dart';

import 'package:maps_app/locator.dart';
import 'package:maps_app/routes/navigator.dart';
import 'package:maps_app/screens/screens.dart';

class MapScreen extends StatelessWidget {
  static String routeName = 'map_screen';
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: MaterialButton(
            onPressed: () {
              locator<NavigationService>()
                  .navigateTo(GpsAccessScreen.routeName);
            },
            child: const Text('Go to GPS'),
          ),
        ),
      ),
    );
  }
}
