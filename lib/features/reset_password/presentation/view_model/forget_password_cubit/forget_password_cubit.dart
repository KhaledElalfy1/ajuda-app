import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super(ForgetPasswordInitial());

  static ForgetPasswordCubit get(context) => BlocProvider.of(context);
  TextEditingController emailController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController reenterPasswordController = TextEditingController();
  TextEditingController otpController1 = TextEditingController();
  TextEditingController otpController2 = TextEditingController();
  TextEditingController otpController3 = TextEditingController();
  TextEditingController otpController4 = TextEditingController();

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();

  GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> newPasswordFormKey = GlobalKey<FormState>();
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
      return 'This field is required';
    }
    return null;
  }

  @override
  Future<void> close() {
    emailController.dispose();
    newPasswordController.dispose();
    reenterPasswordController.dispose();
    otpController1.dispose();
    otpController2.dispose();
    otpController3.dispose();
    otpController4.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
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
