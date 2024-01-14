import 'package:flutter/cupertino.dart';

import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_strings.dart';
import '../../../../core/utilis/app_text_style.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.center,
        child: Text.rich(
            TextSpan(
              text: AppStrings.alreadyHaveAnAccount,
              style: CustomTextStyles.poppins400style12.copyWith(color: AppColors.grey),
              children: <TextSpan>[
                TextSpan(
                    text: AppStrings.signIn,
                    style: CustomTextStyles.poppins400style12.copyWith(
                        color: AppColors.deepGrey, decoration: TextDecoration.underline)),

                // can add more TextSpans here...
              ],
            )
        ),
      ),
    );
  }
}
