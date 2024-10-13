import 'dart:developer';

import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/widgets/custom_text_form_filed.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/password_text_filed_builder.dart';
import 'package:ajuda/features/auth/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: LoginCubit.get(context).formKey,
      child: Column(
        children: [
          CustomTextFormFiled(
            controller: LoginCubit.get(context).emailController,
            validator: LoginCubit.get(context).emailValidator,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          const Gap(15),
          const PasswordTextFiledBuilder(),
          const Gap(5),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                context.pushNamed(Routing.forgetPassword);
              },
              child: Text(
                'Forget password?',
                style: AppFonts.regular12.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          const Gap(25),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (LoginCubit.get(context).formKey.currentState!.validate()) {
                  log('Login');
                }
              },
              child: Text(
                'Sign in',
                style: AppFonts.semiBold16.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
