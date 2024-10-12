import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/dont_have_account_section.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/login_form_widget.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/terms_and_condition_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SvgPicture.asset(AppIcons.iconsAppLogo),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.iconsGoogle),
                      const SizedBox(width: 10),
                      Text(
                        'Sign in with google',
                        style: AppFonts.semiBold16.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
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
