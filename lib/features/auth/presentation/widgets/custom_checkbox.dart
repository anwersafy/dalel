
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utilis/app_colors.dart';
import '../cubit/auth_cubit.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        side: const BorderSide(color: AppColors.grey),
        value: value,
        checkColor: AppColors.primaryColor,
        onChanged: (newValue) {
          setState(() {
            BlocProvider.of<AuthCubit>(context).UpDateTermsAndConditionCheck(
                newValue: newValue);
          });
        });
  }
}
