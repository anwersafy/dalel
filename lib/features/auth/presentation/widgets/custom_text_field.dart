import 'package:flutter/material.dart';

import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText,  this.onChanged,  this.onFieldSubmitted});
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 24.0),
      child: TextFormField(
        onChanged:onChanged,
        onFieldSubmitted:onFieldSubmitted ,

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
    borderSide: const BorderSide(
      color: AppColors.grey,
      width: 2.0,
    ),
  );
}
