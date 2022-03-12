import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:maps_app/blocs/blocs.dart';
import 'package:maps_app/preferences.dart';
import 'package:maps_app/routes/routes.dart';
import 'package:flutter/services.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom],
  );
  await Preferences.init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemesBloc(),
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
      initialRoute: AppRoutes.initialRoute,
      theme: themesBloc.state.themeData,
    );
  }
}
