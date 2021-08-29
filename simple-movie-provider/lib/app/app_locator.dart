import 'package:get_it/get_it.dart';
import 'package:movie_app_test/app/app_router.gr.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => AppRouter());
}
