import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            height: 40.h,
            child: CustomTextFormFiled(
              controller: TextEditingController(),
              hintText: 'Help others ...',
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
        ),
        IconButton(
          onPressed: () {
            context.pushNamed(Routing.savedDonations);
          },
          icon: SvgPicture.asset(
            AppIcons.iconsSaved,
          ),
        ),
      ],
    );
  }
}
