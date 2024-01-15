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
