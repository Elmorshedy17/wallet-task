import 'package:get_it/get_it.dart';
import 'package:wallet_task/features/wallet/controller.dart';

import 'app_core.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // Setup PrefsService.
  var instance = await PrefsService.getInstance();
  locator.registerSingleton<PrefsService>(instance!);

  /// AppLanguageManager
  locator.registerLazySingleton<AppLanguageManager>(() => AppLanguageManager());

  /// NavigationService
  locator.registerLazySingleton<NavigationService>(() => NavigationService());

  /// WalletManager
  locator.registerLazySingleton<WalletManager>(() => WalletManager());

  /// CountriesAndGenderManager
  // locator.registerLazySingleton<CountriesAndGenderManager>(() => CountriesAndGenderManager());

  /// ApiService
  // locator.registerLazySingleton<ApiService>(() => ApiService());

  /// ToastTemplate
  locator.registerLazySingleton<ToastTemplate>(() => ToastTemplate());
}
