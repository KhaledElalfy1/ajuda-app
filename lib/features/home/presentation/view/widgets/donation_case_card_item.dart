import 'package:ajuda/core/models/donation_model.dart';
import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DonationCaseCardItem extends StatelessWidget {
  const DonationCaseCardItem({
    super.key,
    required this.donationModel,
  });
  final DonationModel donationModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 240.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderColor,
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r), topRight: Radius.circular(8.r)),
            child: Image.asset(
              donationModel.imageUrl,
              height: 150.h,
              width: 240.w,
              fit: BoxFit.cover,
            ),
          ),
          Gap(4.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                donationModel.donationCategory,
                style: AppFonts.regular12.copyWith(
                  color: const Color(
                    0xff666D80,
                  ),
                ),
              ),
              Gap(4.w),
              SvgPicture.asset(
                AppIcons.iconsVerified,
                height: 20.h,
                width: 20.w,
              ),
            ],
          ),
          Gap(8.h),
          Text(
            donationModel.donationTitle,
            style: AppFonts.medium16,
          ),
          Gap(8.h),
          LinearPercentIndicator(
            lineHeight: 14.0,
            addAutomaticKeepAlive: true,
            animation: true,
            animationDuration: 1000,
            barRadius: const Radius.circular(50),
            percent: double.parse(donationModel.donatedMoney) /
                double.parse(donationModel.donatedTotalMoney),
            backgroundColor: const Color(0xffFFE9B0),
            progressColor: AppColors.primaryColor,
          ),
          Text.rich(
            TextSpan(
              text: 'collected ',
              children: [
                TextSpan(
                  text: '\$${donationModel.donatedMoney}',
                  style: AppFonts.medium14.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Gap(13.h),
        ],
      ),
    );
  }
}
