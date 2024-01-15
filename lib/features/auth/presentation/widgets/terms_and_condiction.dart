import 'package:flutter/cupertino.dart';

import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_strings.dart';
import '../../../../core/utilis/app_text_style.dart';
import 'custom_checkbox.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(
          TextSpan(
            text: AppStrings.iHaveAgreeToOur,
            style: CustomTextStyles.poppins400style12
                .copyWith(color: AppColors.grey),
            children: <TextSpan>[
              TextSpan(
                  text: AppStrings.termsAndCondition,
                  style: CustomTextStyles.poppins400style12.copyWith(
                      color: AppColors.deepGrey, decoration: TextDecoration.underline)),

              // can add more TextSpans here...
            ],
          ),
        ),
      ],
    );
  }
}
