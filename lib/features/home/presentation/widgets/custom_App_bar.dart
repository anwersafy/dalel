import 'package:flutter/material.dart';

import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_strings.dart';
import '../../../../core/utilis/app_text_style.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.menu, color: AppColors.primaryColor,)),
          Text(AppStrings.appName,style: CustomTextStyles.pacifico400style64.copyWith(color:  AppColors.primaryColor,fontSize: 22),),

        ],
      ),
    );
  }
}
