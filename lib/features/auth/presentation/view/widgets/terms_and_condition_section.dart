import 'dart:developer';

import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndConditionSection extends StatelessWidget {
  const TermsAndConditionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "By signing in you accept the",
        style: AppFonts.medium14.copyWith(
          color: AppColors.greyColor,
        ),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                log('Terms of Service');
              },
            text: ' Terms of Service',
            style: AppFonts.medium14.copyWith(
                color: AppColors.black, decoration: TextDecoration.underline),
          ),
          TextSpan(
            text: ' and ',
            style: AppFonts.medium14.copyWith(
              color: AppColors.greyColor,
            ),
          ),
          TextSpan(
            text: 'Privacy Policy',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                log('Privacy Policy.');
              },
            style: AppFonts.medium14.copyWith(
                color: AppColors.black, decoration: TextDecoration.underline),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
