import 'package:ajuda/core/database/cache/cashe_helper.dart';
import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/core/utils/app_images.dart';
import 'package:ajuda/core/services/get_it.dart';
import 'package:ajuda/core/widgets/custom_button.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Gap(20.h),
              SvgPicture.asset(AppIcons.iconsAppLogo),
              Gap(110.h),
              Image.asset(
                AppImages.imagesOnboarding,
                width: 327,
                height: 205,
              ),
              Gap(50.h),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  S.of(context).onboardingTitle,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Gap(8.h),
              Text(
                S.of(context).onboardingDescription,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: 165.w,
                child: CustomButton(
                  text: S.of(context).startDonating,
                  onPressed: () async {
                    await getIt<CacheHelper>()
                        .saveData(key: CacheKeys.isFirstTime, value: true);
                    if (context.mounted) {
                      context.pushReplacementNamed(Routing.login);
                    }
                  },
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              Gap(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
