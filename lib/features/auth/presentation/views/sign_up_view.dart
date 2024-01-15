import 'package:dalel/core/utilis/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';
import '../widgets/custom_signup_form.dart';
import '../widgets/have_an_account.dart';
import '../widgets/welcome_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
           const SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          ),
          const SliverToBoxAdapter(
            child: WelcomeTextWidget(text: 'Welcome to the app'),
          ),
          const SliverToBoxAdapter(
            child: CustomSignUpForm(),
          ),

          const SliverToBoxAdapter(
            child: SizedBox( height: 20,),
          ),


           SliverToBoxAdapter(
            child: HaveAnAccountWidget(
              text1: AppStrings.alreadyHaveAnAccount  ,
              text2: AppStrings.signIn,
              onTap: (){
                customNavigateReplacment(context, '/signIn');
              },
            ),
          ),
        ],
      ),
    ));
  }
}

