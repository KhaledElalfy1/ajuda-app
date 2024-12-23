import 'package:ajuda/core/widgets/custom_text_form_filed.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_state.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: ForgetPasswordCubit.get(context).newPasswordFormKey,
      child: Column(
        children: [
          BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
            builder: (context, state) {
              return CustomTextFormFiled(
                controller:
                    ForgetPasswordCubit.get(context).newPasswordController,
                hintText: S.of(context).newPassword,
                validator: ForgetPasswordCubit.get(context).passwordValidator,
                keyboardType: TextInputType.visiblePassword,
                obscureText:
                    ForgetPasswordCubit.get(context).isNewPasswordObscure,
                icon: IconButton(
                  onPressed:
                      ForgetPasswordCubit.get(context).changePasswordIcon,
                  icon: Icon(
                    ForgetPasswordCubit.get(context).iconPassword,
                    color: const Color(0xff818898),
                  ),
                ),
              );
            },
          ),
          const Gap(20),
          BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
            builder: (context, state) {
              return CustomTextFormFiled(
                controller:
                    ForgetPasswordCubit.get(context).reenterPasswordController,
                hintText: S.of(context).rewritePassword,
                validator: ForgetPasswordCubit.get(context).passwordValidator,
                keyboardType: TextInputType.visiblePassword,
                obscureText:
                    ForgetPasswordCubit.get(context).isRenterPasswordObscure,
                icon: IconButton(
                  onPressed: ForgetPasswordCubit.get(context)
                      .changeReenterPasswordIcon,
                  icon: Icon(
                    ForgetPasswordCubit.get(context).iconRenterPassword,
                    color: const Color(0xff818898),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
