import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/features/account/presentation/view/widgets/profile_info_section.dart';
import 'package:ajuda/features/account/presentation/view/widgets/profile_option_widget.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
      child: Column(
        children: [
          const ProfileInfoSection(),
          Gap(50.h),
          ProfileOptionWidget(
            onTap: () {
              debugPrint('My Donation');
            },
            leadingIcon: AppIcons.iconsHeart,
            option: S.of(context).myDonation,
          ),
          Gap(30.h),
          ProfileOptionWidget(
            onTap: () {
              debugPrint('My Donation reminder');
            },
            leadingIcon: AppIcons.iconsBell,
            option: S.of(context).donationReminder,
          ),
          Gap(30.h),
          ProfileOptionWidget(
            onTap: () {
              debugPrint('change password');
            },
            leadingIcon: AppIcons.iconsKey,
            option: S.of(context).donationReminder,
          ),
          Gap(30.h),
          ProfileOptionWidget(
            onTap: () {
              debugPrint('Setting');
            },
            leadingIcon: AppIcons.iconsSettings,
            option: S.of(context).setting,
          ),
          Gap(30.h),
        ],
      ),
    );
  }
}
