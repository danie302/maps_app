import 'package:get_it/get_it.dart';

import 'package:maps_app/routes/navigator.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
