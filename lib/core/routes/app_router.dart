import 'package:dalel/core/services/services_locator.dart';
import 'package:dalel/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:dalel/features/onboarding/presentation/view/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        pageBuilder: (context, state) =>  MaterialPage(
              child: BlocProvider(
              create: (context) => getIt<AuthCubit>(),
              child: const SignUpView(),
),
            )),
    GoRoute(
        path: '/signIn',
        
        pageBuilder: (context, state) =>  MaterialPage(
              child: BlocProvider(
  create: (context) => getIt<AuthCubit>(),
  child: const SignInView(),
),
            )),
  ],
);
