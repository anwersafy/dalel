import 'package:dalel/features/onboarding/presentation/view/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/sign_in_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        pageBuilder: (context, state) => const MaterialPage(
              child: SplashView(),
            )),
    GoRoute(
        path: '/onBoarding',
        pageBuilder: (context, state) => const MaterialPage(
              child: OnBoardingView(),
            )),
    GoRoute(
        path: '/signUp',
        pageBuilder: (context, state) => const MaterialPage(
              child: SignUpView(),
            )),
    GoRoute(
        path: '/signIn',
        pageBuilder: (context, state) => const MaterialPage(
              child: SignInView(),
            )),
  ],
);
