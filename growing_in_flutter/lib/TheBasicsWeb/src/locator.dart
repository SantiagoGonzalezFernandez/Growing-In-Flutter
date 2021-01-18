//Imports that are not mine
import 'package:get_it/get_it.dart';

//Imports that are mine
//Services
import 'package:growing_in_flutter/TheBasicsWeb/src/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}