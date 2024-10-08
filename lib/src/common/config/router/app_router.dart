import 'package:auto_route/auto_route.dart';

import '../../../data/data_source/shared_preferences/shared_preferences_helper.dart';
import '../../../service_locator/sl.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({
    super.navigatorKey,
  });

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: sl<SharedPreferencesHelper>().isFirstAppLaunch,
          page: OnboardingRoute.page,
        ),
        AutoRoute(
          initial: !sl<SharedPreferencesHelper>().isFirstAppLaunch,
          page: DashboardRoute.page,
          children: [
            AutoRoute(
              page: ExpenseTypesRoute.page,
            ),
            AutoRoute(
              page: HomeRoute.page,
            ),
          ],
        ),
        AutoRoute(
          page: SettingsRoute.page,
        ),
      ];
}
