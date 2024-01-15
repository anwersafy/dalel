import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import 'custom_text_field.dart';

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is ResetPasswordError){
          showToast('Error: ${state.error}');
        }else if(state is ResetPasswordSuccess){
          customNavigateReplacment(context, '/SignIn');
          showToast('Reset Password Link Sent');
        }
      },

      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              key: authCubit.forgotPassword,
              child: Column(
                children: [

                  CustomTextField(
                    onChanged: (email){
                      authCubit.emailAddress = email;
                    },

                    labelText: AppStrings.emailAddress,
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  state is ResetPasswordLoading
                      ? const CircularProgressIndicator(color: AppColors.primaryColor,)
                      :
                  CustomButton(
                    color: AppColors.primaryColor,

                    text: AppStrings.sendResetPasswordLink,
                    onPressed: () {

                        if(authCubit.forgotPassword.currentState!.validate()){

                          authCubit.resetPassword();
                        }


                    },
                  ),
                ],
              )),
        );
      },
    );
  }
}
