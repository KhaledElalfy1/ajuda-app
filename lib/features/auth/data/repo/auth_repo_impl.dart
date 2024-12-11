import 'package:ajuda/features/auth/data/repo/auth_repo.dart';
import 'package:ajuda/features/auth/model/sign_in_user_input_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRepoImpl extends AuthRepo {
  final Dio dio;

  AuthRepoImpl({required this.dio});
  @override
  Future<Either<String, String>> signIn(
      {required SignInUserInputModel signInUserInputModel}) async {
    throw "";
  }

  @override
  Future<Either<String, String>> singUp() {
    // TODO: implement singUp
    throw UnimplementedError();
  }
}
