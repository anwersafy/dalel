import 'package:dalel/core/utilis/app_strings.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';
import '../widgets/custom_signin_form.dart';
import '../widgets/have_an_account.dart';
import '../widgets/welcome_banner.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      

      body: CustomScrollView(
        slivers:[
          const SliverToBoxAdapter(
            child: WelcomeBanner(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SliverToBoxAdapter(
            child: WelcomeTextWidget(text: 'Welcome Back!'),
          ),

          const SliverToBoxAdapter(
            child: CustomSignInForm(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
           SliverToBoxAdapter(
            child: HaveAnAccountWidget(
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
              onTap: (){
                customNavigateReplacment(context, '/signUp');
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),


          
        ]
      )
    );
  }
}
