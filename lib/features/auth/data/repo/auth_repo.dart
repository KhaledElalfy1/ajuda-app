import 'package:ajuda/features/auth/model/sign_in_user_input_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<String, String>> singUp();
  Future<Either<String, String>> signIn(
      {required SignInUserInputModel signInUserInputModel});
}
