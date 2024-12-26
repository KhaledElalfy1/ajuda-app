import 'package:ajuda/features/reset_password/presentation/view/widgets/otp_text_from_filed.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPDigitsSection extends StatelessWidget {
  const OTPDigitsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: ForgetPasswordCubit.get(context).otpFormKey,
      child: Row(
        children: List.generate(
          6,
          (index) => Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: OtpTextFromFiled(
                autoFocus: index == 0,
                validator: ForgetPasswordCubit.get(context).numberValidator,
                controller:
                    ForgetPasswordCubit.get(context).otpControllers[index],
                focusNode: ForgetPasswordCubit.get(context).otpFocusNode[index],
                onChanged: (value) {
                  if (value.isEmpty) {
                    if (index != 0) {
                      ForgetPasswordCubit.get(context)
                          .otpFocusNode[index - 1]
                          .requestFocus();
                    }
                  }
                  index == 5
                      ? ForgetPasswordCubit.get(context)
                          .otpFocusNode[index]
                          .unfocus()
                      : ForgetPasswordCubit.get(context).nextFiled(
                          value,
                          ForgetPasswordCubit.get(context)
                              .otpFocusNode[index + 1],
                        );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
