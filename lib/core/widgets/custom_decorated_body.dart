import 'package:ajuda/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDecoratedBody extends StatelessWidget {
  const CustomDecoratedBody({
    super.key,
    required this.headerChild,
    required this.bodyChild,
  });
  final Widget headerChild, bodyChild;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 40.h),
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.gradientTwo,
                AppColors.gradientOne,
              ],
              stops: [0, 50],
            ),
          ),
          child: headerChild,
        ),
        Positioned(
          top: 120.h,
          child: Container(
            height: MediaQuery.sizeOf(context).height - 120.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            child: bodyChild,
          ),
        )
      ],
    );
  }
}
