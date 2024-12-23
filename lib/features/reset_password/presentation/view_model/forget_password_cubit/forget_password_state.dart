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

final class ForgetPasswordCheckOTPLoading extends ForgetPasswordState {}

final class ForgetPasswordCheckOTPSuccess extends ForgetPasswordState {
  final String sMessage;

  ForgetPasswordCheckOTPSuccess({required this.sMessage});
}

final class ForgetPasswordCheckOTPFailure extends ForgetPasswordState {
  final String eMessage;

  ForgetPasswordCheckOTPFailure({required this.eMessage});
}


final class ForgetPasswordResetPasswordLoading extends ForgetPasswordState {}

final class ForgetPasswordResetPasswordSuccess extends ForgetPasswordState {
  final String sMessage;

  ForgetPasswordResetPasswordSuccess({required this.sMessage});
}

final class ForgetPasswordResetPasswordFailure extends ForgetPasswordState {
  final String eMessage;

  ForgetPasswordResetPasswordFailure({required this.eMessage});
}