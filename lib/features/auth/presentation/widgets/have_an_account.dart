import 'package:flutter/cupertino.dart';

import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_text_style.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key, this.onTap, this.text1, this.text2});
  final VoidCallback? onTap;
  final String? text1 ;
  final String? text2 ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Align(
          alignment: Alignment.center,
          child: Text.rich(
              TextSpan(
                text: text1,
                style: CustomTextStyles.poppins400style12.copyWith(color: AppColors.grey),
                children: <TextSpan>[
                  TextSpan(
                      text: text2,
                      style: CustomTextStyles.poppins400style12.copyWith(
                          color: AppColors.deepGrey, decoration: TextDecoration.underline)),

                  // can add more TextSpans here...
                ],
              )
          ),
        ),
      ),
    );
  }
}
