import 'dart:developer';

import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/features/reset_password/presentation/view/widgets/forget_password_form.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: AppFonts.semiBold20,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset(AppIcons.iconsLock),
                const Gap(45),
                Text(
                  "Enter your email for the verification process, we will send 4 digits code to your email.",
                  style: AppFonts.medium14,
                ),
                const Gap(45),
                const ForgetPasswordForm(),
                const Gap(75),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (ForgetPasswordCubit.get(context)
                          .newPasswordFormKey
                          .currentState!
                          .validate()) {
                        log("password is valid");
                      }
                    },
                    child: Text(
                      'Confirm',
                      style: AppFonts.semiBold16.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
