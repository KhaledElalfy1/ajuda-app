import 'package:ajuda/core/database/api/api_consumer.dart';
import 'package:ajuda/core/database/api/api_keys.dart';
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
      return right("otp is correct");
    } on DioException catch (e) {
      return left(e.message!);
    }
  }

  @override
  Future<Either<String, String>> resetPassword(
      {required String email,
      required String newPassword,
      required String reenterPassword}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<String, String>> sendOTPToEmail({required String email}) async {
    try {
      Response response = await apiConsumer
          .post(ApiKeys.sendOTPToEmail, body: {'email': email});
      String message = response.data['message'];
      return right(message);
    } on DioException catch (e) {
      return left(e.message ?? 'some error happen'); // TODO change this
    }
  }
}
