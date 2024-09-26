import 'dart:async';

import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'src/presentation/application.dart';
import 'src/service_locator/sl.dart';

void main() async {
  sl.registerSingleton<Talker>(
    Talker(),
  );

  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await initServiceLocator();

      runApp(
        const Application(),
      );
    },
    sl<Talker>().error,
  );
}
