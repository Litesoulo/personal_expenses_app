import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../generated/assets.gen.dart';
import '../../common/config/router/app_router.gr.dart';
import '../../common/constant/app_constants.dart';
import '../../common/extension/extensions.dart';
import '../../common/widget/space.dart';
import '../../data/data_source/shared_preferences/shared_preferences_helper.dart';
import '../../service_locator/sl.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final Image onboardingHero;
  late final Image onboardingBackground;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      sl<SharedPreferencesHelper>().setIsFirstAppLaunch(false);
    });

    onboardingBackground = Assets.images.onboardingBackground.image(
      fit: BoxFit.fitWidth,
    );
    onboardingHero = Assets.images.onboardingHero.image(
      fit: BoxFit.contain,
    );

    super.initState();
  }

  @override
  void didChangeDependencies() async {
    precacheImage(onboardingBackground.image, context);
    precacheImage(onboardingHero.image, context);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ...[
            SizedBox(
              height: context.height * 0.7,
              child: Stack(
                children: [
                  FadeInImage(
                    fadeOutDuration: const Duration(milliseconds: 50),
                    placeholder: MemoryImage(kTransparentImage),
                    image: onboardingBackground.image,
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppConstants.padding),
                      child: FadeInImage(
                        fadeOutDuration: const Duration(milliseconds: 50),
                        placeholder: MemoryImage(kTransparentImage),
                        image: onboardingHero.image,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'spend smarter\nsave more'.toUpperCase(),
              style: context.textTheme.displaySmall,
              textAlign: TextAlign.center,
            ),
            Container(
              padding: const EdgeInsets.all(AppConstants.padding),
              width: double.infinity,
              height: 80,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  elevation: 40,
                ),
                onPressed: () => context.replaceRoute(const HomeRoute()),
                child: const Text(
                  'Get Started',
                ),
              ),
            ),
          ].expand(
            (e) => [
              e,
              Space.v20,
            ],
          ),
        ],
      ),
    );
  }
}
