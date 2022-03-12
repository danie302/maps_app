import 'package:flutter/material.dart';

part 'enable_gps.dart';
part 'access_button.dart';

class GpsAccessScreen extends StatelessWidget {
  static String routeName = 'gps_access_screen';
  const GpsAccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: _AccessButton(),
      ),
    );
  }
}
