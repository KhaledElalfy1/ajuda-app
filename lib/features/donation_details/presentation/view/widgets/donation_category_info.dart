import 'package:ajuda/core/models/donation_model.dart';
import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DonationCategoryInfo extends StatelessWidget {
  const DonationCategoryInfo({
    super.key,
    required this.donationModel,
  });

  final DonationModel donationModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(donationModel.donationCategory),
              Gap(10.h),
              Visibility(
                visible: donationModel.isVerified,
                child: SvgPicture.asset(
                  AppIcons.iconsVerified,
                  height: 20.h,
                  width: 20.w,
                ),
              ),
            ],
          ),
          Gap(8.h),
          Visibility(
            visible: donationModel.isVerified,
            child: Text(
              'Verified Account',
              style:
                  AppFonts.regular14.copyWith(color: const Color(0xff818898)),
            ),
          ),
        ],
      ),
    );
  }
}
