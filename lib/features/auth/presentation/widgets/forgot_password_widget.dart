import 'package:flutter/cupertino.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_strings.dart';
import '../../../../core/utilis/app_text_style.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customNavigateReplacment(context, '/forgotPassword');
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 12.0,top: 12),
          child: Text(AppStrings.forgotPassword,
            style: CustomTextStyles.poppins500style18.copyWith(color: AppColors.primaryColor,fontSize: 14),
          ),
        ),
      ),
    );

  }
}
