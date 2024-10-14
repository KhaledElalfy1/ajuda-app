import 'package:ajuda/features/reset_password/presentation/view/widgets/otp_text_from_filed.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OTPDigitsSection extends StatelessWidget {
  const OTPDigitsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Form(
        key: ForgetPasswordCubit.get(context).otpFormKey,
        child: Row(
          children: [
            Expanded(
              child: OtpTextFromFiled(
                controller: ForgetPasswordCubit.get(context).otpController1,
                focusNode: ForgetPasswordCubit.get(context).focusNode1,
                validator: ForgetPasswordCubit.get(context).numberValidator,
                autoFocus: true,
                onChanged: (p0) => ForgetPasswordCubit.get(context)
                    .nextFiled(p0, ForgetPasswordCubit.get(context).focusNode2),
              ),
            ),
            const Gap(10),
            Expanded(
              child: OtpTextFromFiled(
                controller: ForgetPasswordCubit.get(context).otpController2,
                focusNode: ForgetPasswordCubit.get(context).focusNode2,
                validator: ForgetPasswordCubit.get(context).numberValidator,
                onChanged: (p0) => ForgetPasswordCubit.get(context)
                    .nextFiled(p0, ForgetPasswordCubit.get(context).focusNode3),
              ),
            ),
            const Gap(10),
            Expanded(
              child: OtpTextFromFiled(
                controller: ForgetPasswordCubit.get(context).otpController3,
                focusNode: ForgetPasswordCubit.get(context).focusNode3,
                validator: ForgetPasswordCubit.get(context).numberValidator,
                onChanged: (p0) => ForgetPasswordCubit.get(context)
                    .nextFiled(p0, ForgetPasswordCubit.get(context).focusNode4),
              ),
            ),
            const Gap(10),
            Expanded(
              child: OtpTextFromFiled(
                controller: ForgetPasswordCubit.get(context).otpController4,
                focusNode: ForgetPasswordCubit.get(context).focusNode4,
                validator: ForgetPasswordCubit.get(context).numberValidator,
                onChanged: (p0) {
                  ForgetPasswordCubit.get(context).focusNode4.unfocus();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
