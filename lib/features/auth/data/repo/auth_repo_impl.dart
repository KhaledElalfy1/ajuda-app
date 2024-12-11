import 'dart:developer';

import 'package:ajuda/core/database/api/api_consumer.dart';
import 'package:ajuda/core/database/api/api_keys.dart';
import 'package:ajuda/features/auth/data/repo/auth_repo.dart';
import 'package:ajuda/features/auth/model/auth_model.dart';
import 'package:ajuda/features/auth/model/sign_in_user_input_model.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiConsumer apiConsumer;

  AuthRepoImpl({required this.apiConsumer});
  @override
  Future<Either<String, String>> signIn(
      {required SignInUserInputModel signInUserInputModel}) async {
    try {
      final response = await apiConsumer.post(ApiKeys.signIn,
          body: signInUserInputModel.toJson());
      final data = AuthModel.fromJson(response.data);
      log("the response from sign in repo impl is $data");
      return right(data.userName);
    } catch (e) {
      log("error from sign in repo impl is $e");
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> singUp() {
    // TODO: implement singUp
    throw UnimplementedError();
  }
}
