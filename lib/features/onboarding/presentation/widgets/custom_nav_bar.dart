import 'package:flutter/cupertino.dart';

import '../../../../core/utilis/app_strings.dart';
import '../../../../core/utilis/app_text_style.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,  this.onTap,
  });
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            AppStrings.skip,
            style: CustomTextStyles.poppins300style16
                .copyWith(fontWeight: FontWeight.w400),
          )),
    );
  }
}
