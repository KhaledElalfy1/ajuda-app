import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/widgets/custom_app_bar.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/dont_have_account_section.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/login_form_widget.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/sign_in_with_google_button.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/terms_and_condition_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                const LoginFormWidget(),
                const Gap(30),
                const DontHaveAccountSection(),
                const Gap(8),
                const TermsAndConditionSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

