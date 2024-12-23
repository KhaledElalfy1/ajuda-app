import 'package:dartz/dartz.dart';

abstract class ForgetPasswordRepo {
  Future<Either<String, String>> sendOTPToEmail({required String email});
  Future<Either<String, String>> checkOTP(
      {required String email, required String otp});
  Future<Either<String, String>> resetPassword(
      {required String email,
      required String newPassword,
      required String reenterPassword});
}
