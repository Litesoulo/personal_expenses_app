import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../common/config/router/app_router.dart';
import '../common/config/theme/theme.dart';
import '../common/widget/space.dart';
import '../service_locator/sl.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return MaterialApp.router(
        // Locale
        // locale: TranslationProvider.of(context).flutterLocale,
        // supportedLocales: AppLocaleUtils.supportedLocales,
        // localizationsDelegates: const [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   ...TkDelegates.delegates,
        // ],

        // Theme mode
        // themeMode: sl<SettingsStore>().themeMode,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,

        // App router
        routerConfig: sl<AppRouter>().config(),

        // Remove debug mode banner
        debugShowCheckedModeBanner: false,

        // Ensure consistent font sizes across platforms by disabling system font scaling.
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0),
          ),
          child: child ?? Space.empty,
        ),
      );
    });
  }
}
