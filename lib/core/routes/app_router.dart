import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage(child: const SplashView()),
    // GoRoute(
    //   path: '/about',
    //   pageBuilder: (context, state) => const AboutScreen(),
    // ),
    // GoRoute(
    //   path: '/wars',
    //   pageBuilder: (context, state) => const WarsScreen(),
    // ),
    // GoRoute(
    //   path: '/search',
    //   pageBuilder: (context, state) => const SearchScreen(),
    // ),
    // GoRoute(
    //   path: '/profile',
    //   pageBuilder: (context, state) => const ProfileScreen(),
    // ),
    // GoRoute(
    //   path: '/bazar',
    //   pageBuilder: (context, state) => const BazarScreen(),
    // ),
    // GoRoute(
    //   path: '/cart',
    //   pageBuilder: (context, state) => const CartScreen(),
    // ),
    // GoRoute(
    //   path: '/checkout',
    //   pageBuilder: (context, state) => const CheckoutScreen(),
    // ),
    // GoRoute(
    //   path: '/payment',
    //   pageBuilder: (context, state) => const PaymentScreen(),
    // ),
    // GoRoute(
    //   path: '/order-success',
    //   pageBuilder: (context, state) => const OrderSuccessScreen(),
    // ),
  )],
);