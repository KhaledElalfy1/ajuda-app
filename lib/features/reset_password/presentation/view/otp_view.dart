import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/features/reset_password/presentation/view/widgets/check_otp_bloc_consumer.dart';
import 'package:ajuda/features/reset_password/presentation/view/widgets/otp_digits_section.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

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
                SvgPicture.asset(AppIcons.iconsMessage),
                const Gap(45),
                Text(
                  S.of(context).enterOTP,
                  style: AppFonts.medium14,
                ),
                const Gap(45),
                const OTPDigitsSection(),
                const Gap(100),
                const CheckOTPBlocConsumer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
