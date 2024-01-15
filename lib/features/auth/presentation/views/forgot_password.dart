import 'package:dalel/core/utilis/app_assets.dart';
import 'package:dalel/core/utilis/app_strings.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_forgot_password_form.dart';
import '../widgets/forgot_password_subtitle.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          ),
          SliverToBoxAdapter(
            child: WelcomeTextWidget(text: 'Forgot Password'),
            ),
          SliverToBoxAdapter(
            child: Image.asset(AppAssets.forgotPassword),
            ),
          SliverToBoxAdapter(
            child: ForgotPasswordSubtitle(),
            ),
          SliverToBoxAdapter(
            child: CustomForgotPasswordForm(),
            ),

          
        ],
      ),
    );
  }
}


