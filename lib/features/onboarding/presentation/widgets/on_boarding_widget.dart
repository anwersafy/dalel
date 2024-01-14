import 'package:dalel/core/utilis/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utilis/app_assets.dart';
import '../../../../core/utilis/app_text_style.dart';
import 'custom_smooth_indecator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
   OnBoardingWidgetBody({super.key});
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.44,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.onBoarding1),
                      fit: BoxFit.fill,
                    ),
                  ),
                    ),
                SizedBox(height: 20),
                CustomSmoothWidgetIndecator(pageController: _pageController),
                Text('Explore The History With Us',
                    style: CustomTextStyles.poppins500style24.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 20),
                Text('Explore The History With Us',
                    style: CustomTextStyles.poppins500style24,
                  textAlign: TextAlign.center),


              ],
            );
          }
      ),
    );
  }
}

