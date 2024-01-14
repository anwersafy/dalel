import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utilis/app_colors.dart';

class CustomSmoothWidgetIndecator extends StatelessWidget {
  const CustomSmoothWidgetIndecator({
    super.key,
    required PageController pageController,
  }) :
        _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _pageController,

      count: 3,



      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.deepBrown,
        dotHeight: 10,
        dotWidth: 10,
      ),
    );
  }
}
