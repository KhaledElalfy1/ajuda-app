import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        textDirection: TextDirection.ltr,
        children: [
          SvgPicture.asset(AppIcons.iconsGoogle),
          SizedBox(width: 10.w),
          Text(
            S.of(context).signInWithGoogle,
            style: AppFonts.semiBold16.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
