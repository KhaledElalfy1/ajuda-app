import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/widgets/slivers_gap.dart';
import 'package:ajuda/features/home/presentation/view/widgets/custom_carousel_slider.dart';
import 'package:ajuda/features/home/presentation/view/widgets/donation_balance_widget.dart';
import 'package:ajuda/features/home/presentation/view/widgets/donations_case_card_list_view.dart';
import 'package:ajuda/features/home/presentation/view/widgets/location_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 22.0.h),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text(
              'Spotlight',
              style: AppFonts.semiBold16,
            ),
          ),
          SliversGap(10.h),
          const SliverToBoxAdapter(child: CustomCarouselSlider()),
          SliversGap(20.h),
          const SliverToBoxAdapter(child: DonationBalanceWidget()),
          SliversGap(20.h),
          SliverToBoxAdapter(
            child: Text(
              'Latest Campaign',
              style: AppFonts.semiBold16,
            ),
          ),
          SliversGap(10.h),
          const DonationsCaseCardListView(),
          SliversGap(20.h),
          SliverToBoxAdapter(
            child: Text('Donation location', style: AppFonts.semiBold16),
          ),
          SliversGap(10.h),
          const SliverToBoxAdapter(
            child: LocationCardList(),
          ),
          SliverGap(45.h),
        ],
      ),
    );
  }
}
