import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/core/utils/app_images.dart';
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
              const SizedBox(height: 50),
              Image.asset(
                AppImages.imagesOnboarding,
                width: 327,
                height: 205,
              ),
              const SizedBox(height: 50),
             const Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text(
                  'Donation made Easy',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Ajuda is a platform for philanthropists to make donations to various social programmes and charities around the world.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: 165,
                child: CustomButton(
                  text: 'Start donating',
                  onPressed: () {},
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
