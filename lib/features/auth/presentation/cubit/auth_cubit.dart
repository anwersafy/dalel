import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  late String firstName;
  late String lastName;
  late String emailAddress;
  late String password;
  SignInWithEmailAndPassword() async {
    try {
      emit(SignUpLoading());
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
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
}
