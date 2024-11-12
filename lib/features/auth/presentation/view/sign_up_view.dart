import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/widgets/custom_app_bar.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/sign_in_with_google_button.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/sign_up_form_widget.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.0.w),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SignInWithGoogleButton(),
                 Gap(25.h),
                Text(
                  S.of(context).or,
                  style: AppFonts.medium16.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                 Gap(25.h),
                const SignUpFormWidget(),
                 Gap(30.h),
                Text.rich(
                  TextSpan(
                    text: '${S.of(context).alreadyHaveAccount} ',
                    style: AppFonts.regular14.copyWith(
                      color: AppColors.greyColor,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
                          },
                        text: S.of(context).signIn,
                        style: AppFonts.regular16.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
