import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:maps_app/locator.dart';
import 'package:maps_app/blocs/blocs.dart';
import 'package:maps_app/preferences.dart';
import 'package:maps_app/routes/navigator.dart';
import 'package:maps_app/routes/routes.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.manual,
  //   overlays: [SystemUiOverlay.bottom],
  // );
  await Preferences.init();
  setupLocator();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemesBloc(),
        ),
        BlocProvider(
          create: (context) => GpsBloc(),
        ),
      ],
      child: const MapsApp(),
    ),
  );
}

class MapsApp extends StatelessWidget {
  const MapsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themesBloc = BlocProvider.of<ThemesBloc>(context);
    return MaterialApp(
      title: 'Maps App',
      routes: AppRoutes.getAppRoutes(),
      debugShowCheckedModeBanner: false,
      theme: themesBloc.state.themeData,
      initialRoute: AppRoutes.initialRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
