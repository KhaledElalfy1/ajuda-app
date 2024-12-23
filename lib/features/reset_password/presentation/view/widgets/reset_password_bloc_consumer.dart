import 'dart:developer';

import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/widgets/custom_app_toast.dart';
import 'package:ajuda/core/widgets/custom_auth_loading.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_state.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordBlocConsumer extends StatelessWidget {
  const ResetPasswordBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is ForgetPasswordResetPasswordSuccess) {
          showToast(message: state.sMessage);
          context.pushReplacementNamed(Routing.login);
        } else if (state is ForgetPasswordResetPasswordFailure) {
          showToast(message: state.eMessage);
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
            child: state is ForgetPasswordResetPasswordLoading
                ? const CustomAuthLoading()
                : Text(
                    S.of(context).confirm,
                    style: AppFonts.semiBold16.copyWith(
                      color: Colors.white,
                    ),
                  ),
          ),
        );
      },
    );
  }
}
