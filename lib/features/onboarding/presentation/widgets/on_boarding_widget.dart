import 'package:dalel/features/onboarding/data/on_boarding_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/utilis/app_text_style.dart';
import 'custom_smooth_indecator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
    const OnBoardingWidgetBody({super.key, required this.pageController,  this.onPageChanged});
   final PageController pageController;
   final ValueChanged<int> ?onPageChanged ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: pageController,
          itemCount: onBoardingList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.44,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(onBoardingList[index].image),
                      fit: BoxFit.fill,
                    ),
                  ),
                    ),
                const SizedBox(height: 13),
                CustomSmoothWidgetIndecator(pageController: pageController),
                Text(onBoardingList[index].title,
                    style: CustomTextStyles.poppins500style24.copyWith(fontWeight: FontWeight.bold,fontSize: 20),
                  textAlign: TextAlign.center,
                maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                Text(onBoardingList[index].description,
                    style: CustomTextStyles.poppins500style24.copyWith(fontSize: 13),
                  textAlign: TextAlign.center),


              ],
            );
          }
      ),
    );
  }
}

