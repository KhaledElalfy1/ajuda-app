
import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DonationInfoContainer extends StatelessWidget {
  const DonationInfoContainer({
    super.key,
     required this.iconPath, required this.infoText,
  });

  
  final String iconPath, infoText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.0.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            iconPath,
            width: 20.w,
            height: 20.h,
          ),
          Gap(5.w),
          Text(
            infoText,
            style: AppFonts.medium12.copyWith(
              color: const Color(0xff818898),
            ),
          ),
        ],
      ),
    );
  }
}
