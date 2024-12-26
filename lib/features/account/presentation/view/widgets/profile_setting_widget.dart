import 'package:ajuda/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ProfileSettingWidget extends StatelessWidget {
  const ProfileSettingWidget({
    super.key,
    required this.onTap,
    required this.iconPath,
    required this.title,
  });
  final VoidCallback onTap;
  final String iconPath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.borderColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            12.r,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
            ),
            const Gap(5),
            Text(
              title,
              style: AppFonts.medium12,
            ),
          ],
        ),
      ),
    );
  }
}
