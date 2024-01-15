import 'package:dalel/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:dalel/features/onboarding/presentation/view/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/forgot_password.dart';
import '../../features/auth/presentation/views/sign_in_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/home/presentation/view/home_view.dart';
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
              create: (context) => AuthCubit(),
              child: const SignUpView(),
),
            )),
    GoRoute(
        path: '/signIn',
        
        pageBuilder: (context, state) =>  MaterialPage(
              child: BlocProvider(
  create: (context) => AuthCubit(),
  child: const SignInView(),
),
            )),
    GoRoute(
        path: '/home',
        pageBuilder: (context, state) => const MaterialPage(
              child: HomeView(),
            )

    ),
    GoRoute(
        path: '/forgotPassword',
        pageBuilder: (context, state) =>  MaterialPage(
              child: BlocProvider(
  create: (context) => AuthCubit(),
  child: ForgotPasswordView(),
),
            )

    ),
  ],
);
