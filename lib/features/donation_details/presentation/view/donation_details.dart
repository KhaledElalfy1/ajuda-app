import 'package:ajuda/core/models/donation_model.dart';
import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/core/widgets/custom_button.dart';
import 'package:ajuda/core/widgets/custom_decorated_body.dart';
import 'package:ajuda/core/widgets/custom_linear_perent_indicator.dart';
import 'package:ajuda/features/donation_details/presentation/view/widgets/donation_category_info.dart';
import 'package:ajuda/features/donation_details/presentation/view/widgets/donation_details_header.dart';
import 'package:ajuda/features/donation_details/presentation/view/widgets/donation_info_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DonationDetails extends StatelessWidget {
  const DonationDetails({super.key, required this.donationModel});
  final DonationModel donationModel;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomDecoratedBody(
        headerChild: const DonationDetailsHeader(),
        bodyChild: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 16.0.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: donationModel.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: AspectRatio(
                      aspectRatio: 327 / 280,
                      child: Image.asset(
                        donationModel.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Gap(20.h),
                Text(
                  donationModel.donationTitle,
                  style: AppFonts.semiBold20,
                ),
                Gap(12.h),
                Row(
                  children: [
                    DonationInfoContainer(
                      iconPath: AppIcons.iconsLocation,
                      infoText: donationModel.donationLocation,
                    ),
                    Gap(10.w),
                    DonationInfoContainer(
                      iconPath: AppIcons.iconsEye,
                      infoText: donationModel.totalViews,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Gap(20.h),
                CustomLinearPercentIndicator(donationModel: donationModel),
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
                Gap(20.h),
                DonationCategoryInfo(donationModel: donationModel),
                Gap(10.h),
                Text(
                  donationModel.donationDescription,
                  textAlign: TextAlign.justify,
                  style: AppFonts.regular14.copyWith(
                    color: const Color(0xff818898),
                  ),
                ),
                Gap(20.h),
                CustomButton(
                  text: "Donate Now",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
