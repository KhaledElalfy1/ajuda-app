import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
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
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CustomTextFormFiled(
                  controller: TextEditingController(),
                  hintText: 'Search',
                  keyboardType: TextInputType.text,
                  icon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.iconsSearch,
                      height: 16.h,
                      width: 16.h,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppIcons.iconsSaved,
                ),
              ),
            ],
          ),
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
          ),
        )
      ],
    ));
  }
}
