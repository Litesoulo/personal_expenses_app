part of '../sl.dart';

Future<void> _initCommon() async {
  await _setDeviceOrientation();

  sl.registerSingleton<SharedPreferencesHelper>(
    SharedPreferencesHelper(
      preferences: await SharedPreferences.getInstance(),
    ),
  );
}

_setDeviceOrientation() async {
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );
}
