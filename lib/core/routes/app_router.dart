import 'package:dalel/features/onboarding/presentation/view/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage(
              child: const SplashView(),
            )),
    GoRoute(
        path: '/onBoarding',
        pageBuilder: (context, state) => MaterialPage(
              child: const OnBoardingView(),
            )),
  ],
);
