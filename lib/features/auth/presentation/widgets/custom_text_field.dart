import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText});
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 24.0),
      child: TextFormField(

        style: CustomTextStyles.poppins400style12,
        decoration: InputDecoration(

          border:getOutlineInputBorder(),
          focusedBorder: getOutlineInputBorder(),
          labelText: labelText,
        ),
      ),
    );
  }
}

OutlineInputBorder getOutlineInputBorder() {
  return  OutlineInputBorder(
    borderRadius: BorderRadius.circular(5.0),
    borderSide: BorderSide(
      color: AppColors.grey,
      width: 2.0,
    ),
  );
}