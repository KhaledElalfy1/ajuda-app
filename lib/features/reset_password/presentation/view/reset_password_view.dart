import 'dart:developer';

import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/core/widgets/custom_auth_loading.dart';
import 'package:ajuda/features/reset_password/presentation/view/widgets/forget_password_form.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_state.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).resetPassword,
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
                  S.of(context).enterYourNewPassword,
                  style: AppFonts.medium14,
                ),
                const Gap(45),
                const ForgetPasswordForm(),
                const Gap(75),
                BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
                  listener: (context, state) {
                    if (state is ForgetPasswordResetPasswordSuccess) {
                      // TODO show tost
                      context.pushReplacementNamed(Routing.login);
                    } else if (state is ForgetPasswordResetPasswordFailure) {
                      //TODO show tost
                      log(state.eMessage);
                    }
                  },
                  builder: (context, state) {
                    return SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (ForgetPasswordCubit.get(context)
                              .newPasswordFormKey
                              .currentState!
                              .validate()) {
                            ForgetPasswordCubit.get(context).resetPassword();
                          }
                        },
                        child:state is ForgetPasswordResetPasswordLoading?const CustomAuthLoading() :Text(
                          S.of(context).confirm,
                          style: AppFonts.semiBold16.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
