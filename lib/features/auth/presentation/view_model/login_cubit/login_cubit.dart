import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/features/auth/presentation/view_model/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(BuildContext context) => BlocProvider.of(context);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  IconData icon = Icons.visibility_off;
  bool isPasswordVisible = true;

  String? emailValidator(String? value) {
    if (value==null||!value.isValidEmail) {
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

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
