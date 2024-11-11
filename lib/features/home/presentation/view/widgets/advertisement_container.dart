import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/features/home/data/models/advertisement_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdvertisementContainer extends StatelessWidget {
  const AdvertisementContainer({
    super.key,
    required this.advertisementModel,
  });

  final AdvertisementModel advertisementModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260.w,
      height: 140.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primaryColor.withOpacity(0.5),
            AppColors.primaryColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Row(
        textDirection: TextDirection.ltr,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(advertisementModel.imagePath),
          ),
          Flexible(
            child: Text(
              advertisementModel.title,
              textAlign: TextAlign.left,
              style: AppFonts.semiBold16.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
