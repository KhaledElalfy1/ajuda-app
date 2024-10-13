import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    );
  }
}
