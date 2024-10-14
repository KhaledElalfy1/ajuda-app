import 'package:ajuda/core/widgets/custom_text_form_filed.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';
import 'package:flutter/material.dart';
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
          CustomTextFormFiled(
            controller: ForgetPasswordCubit.get(context)
                .newPasswordController,
            hintText: 'New Password',
            validator: ForgetPasswordCubit.get(context).passwordValidator,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility_off,
                color: Color(0xff818898),
              ),
            ),
          ),
          const Gap(20),
          CustomTextFormFiled(
            controller: ForgetPasswordCubit.get(context)
                .reenterPasswordController,
            hintText: 'rewrite Password',
            validator: ForgetPasswordCubit.get(context).passwordValidator,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility_off,
                color: Color(0xff818898),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
