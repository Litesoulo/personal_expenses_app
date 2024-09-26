part of '../sl.dart';

Future<void> _initDataLayer() async {
  sl.registerSingleton<AppDatabase>(
    AppDatabase(databaseName: 'personal_expenses_app'),
  );
}
