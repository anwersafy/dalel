import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/utilis/app_colors.dart';
import 'package:dalel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'core/routes/app_router.dart';
import 'core/services/services_locator.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setUpServicesLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
await  getIt<CacheHelper>().init();
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
