import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/widgets/custom_app_toast.dart';
import 'package:ajuda/features/reset_password/data/repo/forget_password_repo.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this.forgetPasswordRepo) : super(ForgetPasswordInitial());
  final ForgetPasswordRepo forgetPasswordRepo;
  static ForgetPasswordCubit get(context) => BlocProvider.of(context);
  TextEditingController emailController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController reenterPasswordController = TextEditingController();
  List<TextEditingController> otpControllers =
      List.generate(6, (_) => TextEditingController());

  List<FocusNode> otpFocusNode = List.generate(6, (_) => FocusNode());

  GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> newPasswordFormKey = GlobalKey<FormState>();

  void sendOTPToEmail() async {
    emit(ForgetPasswordSendOTPLoading());
    final result =
        await forgetPasswordRepo.sendOTPToEmail(email: emailController.text);
    result.fold(
      (eMessage) => emit(
        ForgetPasswordSendOTPFailure(eMessage: eMessage),
      ),
      (sMessage) => emit(
        ForgetPasswordSendOTPSuccess(sMessage: sMessage),
      ),
    );
  }

  void checkOTP() async {
    emit(ForgetPasswordCheckOTPLoading());
    String otp = otpControllers.map((controller) => controller.text).join();
    final result = await forgetPasswordRepo.checkOTP(
        email: emailController.text, otp: otp);

    result.fold(
      (eMessage) => emit(
        ForgetPasswordCheckOTPFailure(eMessage: eMessage),
      ),
      (sMessage) => emit(
        ForgetPasswordCheckOTPSuccess(sMessage: sMessage),
      ),
    );
  }

  void resetPassword() async {
    emit(ForgetPasswordResetPasswordLoading());
    final result = await forgetPasswordRepo.resetPassword(
      email: emailController.text,
      newPassword: newPasswordController.text,
      reenterPassword: reenterPasswordController.text,
    );
    result.fold(
      (eMessage) => emit(
        ForgetPasswordResetPasswordFailure(eMessage: eMessage),
      ),
      (sMessage) => emit(
        ForgetPasswordResetPasswordSuccess(sMessage: sMessage),
      ),
    );
  }

  void nextFiled(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  String? emailValidator(String? value) {
    if (value == null || !value.isValidEmail) {
      return 'Invalid email';
    }
    return null;
  }

  String? numberValidator(String? p1) {
    if (p1 == null || p1.isEmpty) {
      showToast(message: "All Filed IS Require");
      return '';
    }
    return null;
  }

  void disposeOTPResources() {
    for (final controller in otpControllers) {
      controller.dispose();
    }
    for (final focusNode in otpControllers) {
      focusNode.dispose();
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    newPasswordController.dispose();
    reenterPasswordController.dispose();
    disposeOTPResources();
    return super.close();
  }

  String? passwordValidator(String? p1) {
    if (p1 == null || p1.isEmpty) {
      return 'Password is required';
    } else if (p1.length < 8) {
      return 'Password must be at least 8 characters';
    } else if (!p1.isValidPassword) {
      return 'Invalid password format';
    } else if (newPasswordController.text != reenterPasswordController.text) {
      return 'Password does not match';
    }
    return null;
  }
}
