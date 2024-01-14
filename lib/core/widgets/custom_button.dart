import 'package:dalel/core/utilis/app_strings.dart';
import 'package:dalel/core/utilis/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilis/app_colors.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key,  this.color, required this.text});
   final Color? color;
   final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child:Text(text,
        style:  CustomTextStyles.poppins500style24.copyWith(color:AppColors.offWhite,fontSize: 18)
          ,),
      ),
    );
  }
}
