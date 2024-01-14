import 'package:dalel/core/utilis/app_colors.dart';
import 'package:dalel/core/utilis/app_strings.dart';
import 'package:dalel/core/utilis/app_text_style.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_checkbox.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/have_an_account.dart';
import '../widgets/terms_and_condiction.dart';
import '../widgets/welcome_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          ),
          SliverToBoxAdapter(
            child: WelcomeTextWidget(text: 'Welcome to the app'),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              labelText: AppStrings.fristName,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              labelText: AppStrings.lastName,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              labelText: AppStrings.emailAddress,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              labelText: AppStrings.password,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox( height: 20,),
          ),

          SliverToBoxAdapter(
            child: TermsAndCondition(),
          ),

          SliverToBoxAdapter(
            child: SizedBox( height: 40,),
          ),
          SliverToBoxAdapter(
            child: CustomButton(
              text: AppStrings.signUp,
              onPressed: () {},
              color: AppColors.primaryColor,
            ),
          ),
          SliverToBoxAdapter(
            child: HaveAnAccountWidget(),
          ),
        ],
      ),
    ));
  }
}

