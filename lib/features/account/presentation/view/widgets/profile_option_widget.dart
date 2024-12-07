import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
class ProfileOptionWidget extends StatelessWidget {
  const ProfileOptionWidget({
    super.key,
    required this.onTap,
    required this.leadingIcon,
    required this.option,
  });
  final VoidCallback onTap;
  final String leadingIcon;
  final String option;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(leadingIcon),
          Gap(10.w),
          Text(
            option,
            style: AppFonts.regular16,
          ),
          const Spacer(),
          const RotatedBox(
            quarterTurns: 2,
            child: Icon(Icons.arrow_back_ios_new),
          ),
        ],
      ),
    );
  }
}
