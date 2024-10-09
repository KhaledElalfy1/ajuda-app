import 'package:ajuda/core/database/cache/cashe_helper.dart';
import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/core/utils/app_images.dart';
import 'package:ajuda/core/services/get_it.dart';
import 'package:ajuda/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              const SizedBox(height: 20),
              SvgPicture.asset(AppIcons.iconsAppLogo),
              const SizedBox(height: 110),
              Image.asset(
                AppImages.imagesOnboarding,
                width: 327,
                height: 205,
              ),
              const SizedBox(height: 50),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  'Donation made Easy',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Ajuda is a platform for philanthropists to make donations to various social programmes and charities around the world.',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: 165,
                child: CustomButton(
                  text: 'Start donating',
                  onPressed: () async {
                  await  getIt<CacheHelper>()
                        .saveData(key: CacheKeys.isFirstTime, value: true);
                   if(context.mounted){
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
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
