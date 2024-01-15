part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}
class SignUpLoading extends AuthState {}
class SignUpSuccess extends AuthState {}
class SignUpError extends AuthState {
  final String error;
  SignUpError(this.error);
}
class UpdateTermsAndConditionCheckk extends AuthState {}
class UpdatePasswordVisibilit extends AuthState {}
class SignInLoading extends AuthState {}
class SignInSuccess extends AuthState {}
class SignInError extends AuthState {
  final String error;
  SignInError(this.error);
}
class ResetPasswordLoading extends AuthState {}
class ResetPasswordSuccess extends AuthState {}
class ResetPasswordError extends AuthState {
  final String error;
  ResetPasswordError(this.error);
}
