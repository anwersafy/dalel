import 'package:dalel/core/utilis/app_colors.dart';
import 'package:dalel/core/utilis/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';
import '../widgets/custom_signup_form.dart';
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
      padding:  EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
           SliverToBoxAdapter(
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
              onTap: (){
                customNavigate(context, '/signIn');
              },
            ),
          ),
        ],
      ),
    ));
  }
}

