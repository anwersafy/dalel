import 'package:dalel/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/functions/custom_toast.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import 'custom_text_field.dart';
import 'forgot_password_widget.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is SignInError){
          showToast('Error: ${state.error}');
        }else if(state is SignInSuccess){
          FirebaseAuth.instance.currentUser!.emailVerified==true? customNavigateReplacment(context, '/homeNavBar'):
          showToast('Please Verify Your Email');

        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
            key: authCubit.signInformKey,
            child: Column(
              children: [

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
                const ForgotPasswordWidget(),
                state is SignInLoading
                    ? const CircularProgressIndicator(color: AppColors.primaryColor,)
                    :
                CustomButton(

                  text: AppStrings.signIn,
                  onPressed: () {
                      if(authCubit.signInformKey.currentState!.validate()){

                        authCubit.SignInWithEmailAndPassword();

                      }


                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ));
      },
    );
  }
}
