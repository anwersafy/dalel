import 'package:dalel/core/utilis/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/database/cache/cache_helper.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/services/services_locator.dart';
import '../../../../core/utilis/app_text_style.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
  bool isOnBoardingVisited =  getIt<CacheHelper>().getData(key: 'isOnBoardingVisited')??false;
  if(isOnBoardingVisited==true){
    delayedNavigate(context, '/SignUp');

  }else{
    delayedNavigate(context, '/OnBoarding');


  }
    super.initState();
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
void delayedNavigate(context,path) {
  Future.delayed(const Duration(seconds: 2), () {
    customNavigateReplacment( context, path);
  });
}
