import 'package:ajuda/core/database/api/api_consumer.dart';
import 'package:ajuda/core/database/api/api_keys.dart';
import 'package:ajuda/core/errors/exceptions.dart';
import 'package:ajuda/features/reset_password/data/repo/forget_password_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ForgetPasswordRepoImpl extends ForgetPasswordRepo {
  final ApiConsumer apiConsumer;

  ForgetPasswordRepoImpl({required this.apiConsumer});
  @override
  Future<Either<String, String>> checkOTP(
      {required String email, required String otp}) async {
    try {
      Response response = await apiConsumer.post(ApiKeys.checkOTP, body: {
        'email': email,
        'otp': otp,
      });
      String message = response.data['message'];
      return right(message);
    } on ServerException catch (e) {
      return left(e.errorModel.message);
    }
  }

  @override
  Future<Either<String, String>> resetPassword(
      {required String email,
      required String newPassword,
      required String reenterPassword}) async {
    try {
      Response response = await apiConsumer.post(ApiKeys.resetPassword, body: {
        'email': email,
        'newPassword': newPassword,
        'confirmNewPassword': reenterPassword,
      });
      String message = response.data['message'];
      return right(message);
    } on ServerException catch (e) {
      return left(e.errorModel.errors![0]);
    }
  }

  @override
  Future<Either<String, String>> sendOTPToEmail({required String email}) async {
    try {
      Response response = await apiConsumer
          .post(ApiKeys.sendOTPToEmail, body: {'email': email});
      String message = response.data['message'];
      return right(message);
    } on ServerException catch (e) {
      return left(e.errorModel.message); 
    }
  }
}
