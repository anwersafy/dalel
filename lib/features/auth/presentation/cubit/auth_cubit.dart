import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
   String? firstName;
   String? lastName;
   String? emailAddress;
   String? password;
   GlobalKey<FormState> signUpformKey = GlobalKey<FormState>();
   GlobalKey<FormState> signInformKey = GlobalKey<FormState>();
   GlobalKey<FormState> forgotPassword = GlobalKey<FormState>();
    bool? termsAndConditionCheckboxValue  = false;
    bool? isPasswordVisible = true;
  SignUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoading());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailAddress!,
          password:password!,
      );
      verifyEmail();
      emit(SignUpSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
       emit(SignUpError('The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
emit(SignUpError('The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignUpError(e.toString()));
    }
  }
  UpDateTermsAndConditionCheck({required newValue}){
    termsAndConditionCheckboxValue = newValue;
    emit(UpdateTermsAndConditionCheckk());
  }
  UpdatePasswordVisibility(){
    if (isPasswordVisible == true) {
      isPasswordVisible = false;
    } else {
      isPasswordVisible = true;
    }
    emit(UpdatePasswordVisibilit());
  }
  SignInWithEmailAndPassword() async {
    try {
      emit(SignInLoading());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress!,
          password: password!
      );
      emit(SignInSuccess());
    } on FirebaseAuthException catch (e) {

      if (e.code == 'user-not-found') {
        emit(SignInError('No user found for that email.'));
      } else if (e.code == 'wrong-password') {
      }else{
        emit(SignInError(e.toString()));
      }
    } catch (e) {
      emit(SignInError(e.toString()));
    }
  }
  verifyEmail() async {

      await FirebaseAuth.instance.currentUser!.sendEmailVerification();

  }
  resetPassword() async {
    try {
      emit(ResetPasswordLoading());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(ResetPasswordSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(ResetPasswordError('No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(ResetPasswordError('Wrong password provided for that user.'));
      }
    }
  }



}
