import 'package:ajuda/core/widgets/custom_text_form_filed.dart';
import 'package:ajuda/features/auth/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:ajuda/features/auth/presentation/view_model/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordTextFiledBuilder extends StatelessWidget {
  const PasswordTextFiledBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return CustomTextFormFiled(
          controller: LoginCubit.get(context).passwordController,
          validator: LoginCubit.get(context).passwordValidator,
          hintText: 'Password',
          keyboardType: TextInputType.visiblePassword,
          obscureText: LoginCubit.get(context).isPasswordVisible,
          icon: IconButton(
            onPressed: LoginCubit.get(context).togglePasswordVisibility,
            icon: Icon(
              LoginCubit.get(context).icon,
              color: const Color(0xff818898),
            ),
          ),
        );
      },
    );
  }
}
