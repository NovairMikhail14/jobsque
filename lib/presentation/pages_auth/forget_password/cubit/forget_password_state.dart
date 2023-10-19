part of 'forget_password_cubit.dart';

@immutable
abstract class ForgetPasswordState {}

class ForgetPasswordInitial extends ForgetPasswordState {}
class ForgetPasswordSuccess extends ForgetPasswordState {
  String message;

  ForgetPasswordSuccess(this.message);
}
class ForgetPasswordFailed extends ForgetPasswordState {
  String message;

  ForgetPasswordFailed(this.message);
}
