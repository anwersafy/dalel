import 'package:dalel/core/utilis/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utilis/app_text_style.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    delayedNavigate(context);
  }


  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
        child: Text(AppStrings.appName,style: CustomTextStyles.pacifico400style64,),
      ),
    );
  }
}
void delayedNavigate(context) {
  Future.delayed(const Duration(seconds: 2), () {
    customNavigateReplacment( context, '/onBoarding');
  });
}
