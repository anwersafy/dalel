import 'package:dalel/core/utilis/app_assets.dart';
import 'package:dalel/core/utilis/app_strings.dart';
import 'package:dalel/core/utilis/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/on_boarding_widget.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              physics: const BouncingScrollPhysics(),
                    children: [
            SizedBox(height: 30),
            CustomNavBar(),
            OnBoardingWidgetBody(),
            SizedBox(height: 80),
            CustomButton(text: AppStrings.next,),
            SizedBox(height: 10),
                    ],
                  ),
          )),
    );
  }
}

