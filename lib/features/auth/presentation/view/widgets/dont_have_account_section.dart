import 'dart:developer';

import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class DontHaveAccountSection extends StatelessWidget {
  const DontHaveAccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Don\'t have an account? ',
        style: AppFonts.medium16.copyWith(
          color: AppColors.greyColor,
        ),
        children: [
          TextSpan(
            text: 'Sign up',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                log('Sign up');
              },
            style: AppFonts.semiBold16.copyWith(
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
