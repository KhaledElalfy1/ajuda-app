import 'package:ajuda/core/database/cache/cache_keys.dart';
import 'package:ajuda/core/database/cache/secure_storage.dart';
import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/features/account/presentation/view/widgets/profile_setting_widget.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40.r,
          backgroundImage: const AssetImage(
            AppImages.imagesPerson,
          ),
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Khaled Elalfy",
              style: AppFonts.medium20,
            ),
            Text(
              "Khaledalfy53@gmail.com",
              style: AppFonts.regular14,
            ),
            Gap(12.h),
            Row(
              children: [
                ProfileSettingWidget(
                  onTap: () {},
                  iconPath: AppIcons.iconsProfile,
                  title: S.of(context).editProfile,
                ),
                Gap(10.w),
                ProfileSettingWidget(
                  onTap: () async {
                    await SecureStorage.instance
                        .deleteData(key: CacheKeys.token);
                    await SecureStorage.instance.deleteData(key: CacheKeys.id);
                    if (context.mounted) {
                      context.pushNamedAndRemoveUntil(Routing.login,
                          predicate: (route) => false);
                    }
                  },
                  iconPath: AppIcons.iconsLogOut,
                  title: S.of(context).logOut,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
