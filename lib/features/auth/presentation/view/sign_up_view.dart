import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/widgets/custom_app_bar.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/sign_in_with_google_button.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/sign_up_form_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SignInWithGoogleButton(),
                const Gap(25),
                Text(
                  'or',
                  style: AppFonts.medium16.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                const Gap(25),
                const SignUpFormWidget(),
                const Gap(30),
                Text.rich(
                  TextSpan(
                    text: 'Already have an account? ',
                    style: AppFonts.regular14.copyWith(
                      color: AppColors.greyColor,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
                          },
                        text: 'Sign in',
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
