import 'package:dalel/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_condiction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import 'custom_text_field.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
            child: Column(
              children: [
                CustomTextField(
                  onChanged: (firstName){
                    BlocProvider.of<AuthCubit>(context).firstName = firstName;
                  },
                  labelText: AppStrings.fristName,
                ),
                CustomTextField(
                  onChanged: (lastName){
                    BlocProvider.of<AuthCubit>(context).lastName = lastName;
                  },

                  labelText: AppStrings.lastName,
                ),
                CustomTextField(
                  onChanged: (email){
                    BlocProvider.of<AuthCubit>(context).emailAddress = email;
                  },

                  labelText: AppStrings.emailAddress,
                ),
                CustomTextField(
                  onChanged: (password){
                    BlocProvider.of<AuthCubit>(context).password = password;
                  },

                  labelText: AppStrings.password,
                ),
                TermsAndCondition(),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                  text: AppStrings.signUp,
                  onPressed: () {
                    BlocProvider.of<AuthCubit>(context).SignInWithEmailAndPassword();
                  },
                  color: AppColors.primaryColor,
                ),
              ],
            ));
      },
    );
  }
}
