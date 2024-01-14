import 'package:dalel/core/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'core/routes/app_router.dart';
void main() {
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.offWhite),
        useMaterial3: true,

      ),
    );
  }
}
