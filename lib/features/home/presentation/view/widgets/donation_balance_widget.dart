import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DonationBalanceWidget extends StatelessWidget {
  const DonationBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.grey[300]!, width: 1),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Donation balance :',
                style: AppFonts.regular12.copyWith(color: Colors.grey),
              ),
              Text(
                'Rp. 200.000',
                style: AppFonts.medium12,
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.iconsPlus,
              height: 30.h,
            ),
          ),
          Gap(15.w),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.iconsHistory,
              height: 30.h,
            ),
          ),
        ],
      ),
    );
  }
}
