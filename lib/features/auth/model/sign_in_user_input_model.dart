class SignInUserInputModel {
  final String email;
  final String password;

  SignInUserInputModel({required this.email, required this.password});

  toJson() {
    return {
      "email": email,
      "password": password,
    };
  }
}
