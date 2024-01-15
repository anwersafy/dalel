import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_condiction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/functions/navigation.dart';
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
        if(state is SignUpError){
          showToast('Error: ${state.error}');


        }else if(state is SignUpSuccess){
          customNavigateReplacment(context, '/SignIn');
          showToast('Email Verification Sent');

        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signUpformKey,
            child: Column(
              children: [
                CustomTextField(
                  onChanged: (firstName){
                    authCubit.firstName = firstName;
                  },
                  labelText: AppStrings.fristName,
                ),
                CustomTextField(
                  onChanged: (lastName){
                    authCubit.lastName = lastName;
                  },

                  labelText: AppStrings.lastName,
                ),
                CustomTextField(
                  onChanged: (email){
                    authCubit.emailAddress = email;
                  },

                  labelText: AppStrings.emailAddress,
                ),
                CustomTextField(
                  suffixIcon: IconButton(
                    icon: Icon(
                      authCubit.isPasswordVisible == true
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                    onPressed: () {
                      authCubit.UpdatePasswordVisibility();
                    },
                  ),
                  obscureText: authCubit.isPasswordVisible,
                  onChanged: (password) {
                    authCubit.password = password;
                  },




                  labelText: AppStrings.password,
                ),
                const TermsAndCondition(),
                const SizedBox(
                  height: 40,
                ),
                state is SignUpLoading
                    ? const CircularProgressIndicator(color: AppColors.primaryColor,)
                    :
                CustomButton(
                  color: authCubit.termsAndConditionCheckboxValue==false?AppColors.grey:AppColors.primaryColor,

                  text: AppStrings.signUp,
                  onPressed: () {
                    if(authCubit.termsAndConditionCheckboxValue==true){
                      if(authCubit.signUpformKey.currentState!.validate()){

                        authCubit.SignUpWithEmailAndPassword();
                      }

                    }
                  },
                ),
              ],
            ));
      },
    );
  }
}
