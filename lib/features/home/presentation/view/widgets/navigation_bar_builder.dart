
import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/features/home/presentation/view_model/navigation_cubit/navigation_cubit.dart';
import 'package:ajuda/features/home/presentation/view_model/navigation_cubit/navigation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
class NavigationBarBuilder extends StatelessWidget {
  const NavigationBarBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          onTap: (value) => NavigationCubit.get(context).changeIndex(value),
          currentIndex: NavigationCubit.get(context).currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.iconsHome),
              activeIcon: SvgPicture.asset(
                AppIcons.iconsHome,
                colorFilter:const ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.iconsFavorite),
             activeIcon : SvgPicture.asset(AppIcons.iconsFavorite,
                colorFilter:const ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),),
              label: '',
            ),
             BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.iconsNotification),
              activeIcon: SvgPicture.asset(
                AppIcons.iconsNotification,
                colorFilter:const ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.iconsProfile),
              activeIcon: SvgPicture.asset(
                AppIcons.iconsProfile,
                colorFilter:const ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              label: '',
            ),
          ],
        );
      },
    );
  }
}
