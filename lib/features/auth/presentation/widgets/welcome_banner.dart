import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utilis/app_assets.dart';
import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_strings.dart';
import '../../../../core/utilis/app_text_style.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      color: AppColors.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(AppStrings.appName,
            style: CustomTextStyles.pacifico400style64.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(AppAssets.Vector1),
              SvgPicture.asset(AppAssets.Vector2),

            ],
          )


        ],
      ),
    );
  }
}
