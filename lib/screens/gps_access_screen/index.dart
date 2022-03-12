import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/blocs/blocs.dart';

part 'enable_gps.dart';
part 'access_button.dart';

class GpsAccessScreen extends StatelessWidget {
  static String routeName = 'gps_access_screen';
  const GpsAccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BlocBuilder<GpsBloc, GpsState>(
        builder: (context, state) {
          return state.isGpsEnabled
              ? const _AccessButton()
              : const _EnableGpsMsg();
        },
      )),
    );
  }
}
