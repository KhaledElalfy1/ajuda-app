import 'package:ajuda/features/reset_password/presentation/view/widgets/otp_text_from_filed.dart';
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
      child: Row(
        children: [
          Expanded(
            child: OtpTextFromFiled(
              controller: TextEditingController(),
              focusNode: FocusNode(),
              autoFocus: true,
            ),
          ),
          const Gap(10),
          Expanded(
            child: OtpTextFromFiled(
              controller: TextEditingController(),
              focusNode: FocusNode(),
            ),
          ),
          const Gap(10),
          Expanded(
            child: OtpTextFromFiled(
              controller: TextEditingController(),
              focusNode: FocusNode(),
            ),
          ),
          const Gap(10),
          Expanded(
            child: OtpTextFromFiled(
              controller: TextEditingController(),
              focusNode: FocusNode(),
            ),
          ),
        ],
      ),
    );
  }
}
