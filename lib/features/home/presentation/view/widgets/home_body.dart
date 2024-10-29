import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/features/home/presentation/view/widgets/custom_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 22.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Spotlight',
            style: AppFonts.semiBold12,
          ),
          Gap(10.h),
         const CustomCarouselSlider(),
        ],
      ),
    );
  }
}

