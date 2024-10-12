

import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/features/auth/presentation/view_model/sign_up_cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  static SignUpCubit get(context)=>BlocProvider.of(context);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  IconData icon = Icons.visibility_off;
  bool isPasswordVisible = true;
  bool isAgreeWithTerms = false;

  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || !value.isValidEmail) {
      return 'Invalid email';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters';
    } else if (!value.isValidPassword) {
      return 'Invalid password format';
    }
    return null;
  }



  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    icon = isPasswordVisible ? Icons.visibility_off : Icons.visibility;
    emit(ChangeVisibility());
  }

  void agreeWithTerms() {
    isAgreeWithTerms = !isAgreeWithTerms;
    emit(AgreeWithTerms());
  }

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
