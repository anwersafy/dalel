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
    bool? termsAndConditionCheckboxValue  = false;
    bool? isPasswordVisible = true;
  SignInWithEmailAndPassword() async {
    try {
      emit(SignUpLoading());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailAddress!,
          password:password!,
      );
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
}
