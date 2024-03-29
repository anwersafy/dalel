import 'package:flutter/material.dart';

import '../../../../core/utilis/app_strings.dart';

class ForgotPasswordSubtitle extends StatelessWidget {
  const ForgotPasswordSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(left: 13.0),
          child: Text(AppStrings.resetPasswordSubtitle, style: TextStyle(fontSize: 16, color: Colors.grey),),
        ));
  }
}
