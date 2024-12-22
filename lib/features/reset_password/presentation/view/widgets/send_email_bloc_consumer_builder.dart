
import 'dart:developer';

import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/widgets/custom_auth_loading.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_state.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SendEmailBlocConsumerBuilder extends StatelessWidget {
  const SendEmailBlocConsumerBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is ForgetPasswordSendOTPSuccess) {
          context.pushReplacementNamed(Routing.enterOTP);
        } else if (state is ForgetPasswordSendOTPFailure) {
          log(state.eMessage);
        }
      },
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (ForgetPasswordCubit.get(context)
                  .emailFormKey
                  .currentState!
                  .validate()) {
                ForgetPasswordCubit.get(context).sendOTPToEmail();
              }
            },
            child: state is ForgetPasswordSendOTPLoading
                ? const CustomAuthLoading()
                : Text(
                    S.of(context).send,
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
