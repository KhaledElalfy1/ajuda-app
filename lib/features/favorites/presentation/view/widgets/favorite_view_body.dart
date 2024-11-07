import 'package:ajuda/core/models/donation_model.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/core/utils/app_images.dart';
import 'package:ajuda/core/widgets/custom_text_form_filed.dart';
import 'package:ajuda/core/widgets/donation_case_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: CustomScrollView(
        slivers: [
          SliverGap(30.h),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Expanded(
                  child: CustomTextFormFiled(
                      controller: TextEditingController(),
                      hintText: 'Search',
                      keyboardType: TextInputType.text),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppIcons.iconsFilter,
                    height: 22.h,
                    width: 22.w,
                  ),
                ),
              ],
            ),
          ),
          SliverGap(30.h),
          SliverToBoxAdapter(
            child: Text(
              'Latest fundraiser',
              style: AppFonts.semiBold16,
            ),
          ),
          SliverGap(15.h),
          SliverGrid.builder(
            itemCount: 5,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) => DonationCaseCardItem(
              donationModel: DonationModel(
                imageUrl: AppImages.imagesDonationLocation,
                donationCategory: 'Bantubarengan',
                isVerified: true,
                donationTitle: 'Bantu muslim indonesia ke mekkah.',
                donatedMoney: '12000',
                donatedTotalMoney: '24000',
                donationLocation: 'Jakarta',
                totalViews: '10k',
              ),
            ),
          ),
          SliverGap(70.h),
        ],
      ),
    );
  }
}
