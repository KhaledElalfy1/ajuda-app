
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpSuccess extends SignUpState {}

final class SignUpFailure extends SignUpState {
  final String message;

  SignUpFailure({required this.message});

}



final class ChangeVisibility extends SignUpState {}


final class AgreeWithTerms extends SignUpState {}
