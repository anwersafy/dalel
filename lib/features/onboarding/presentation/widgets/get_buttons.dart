import 'package:flutter/cupertino.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utilis/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../data/on_boarding_model.dart';

class GetButtons extends StatelessWidget {
  GetButtons({super.key, required this.currentPage, required this.pageController});

  final int currentPage;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    if (currentPage == onBoardingList.length - 1) {
      return Column(
        children: [
          CustomButton(text: AppStrings.createAccount, onPressed: () {
            customNavigateReplacment(context, '/SignUp');
          }),
          const SizedBox(height: 10),
          CustomButton(text: AppStrings.signIn, onPressed: () {
            customNavigateReplacment(context, '/SignIn');
          }),
        ],
      );
    } else {
      return CustomButton(text: AppStrings.next, onPressed: () {
        pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      });
    }
  }
}
