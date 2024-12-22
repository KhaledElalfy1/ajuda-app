sealed class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

final class ForgetPasswordSendOTPLoading extends ForgetPasswordState {}

final class ForgetPasswordSendOTPSuccess extends ForgetPasswordState {
  final String sMessage;

  ForgetPasswordSendOTPSuccess({required this.sMessage});
}

final class ForgetPasswordSendOTPFailure extends ForgetPasswordState {
  final String eMessage;

  ForgetPasswordSendOTPFailure({required this.eMessage});
}
