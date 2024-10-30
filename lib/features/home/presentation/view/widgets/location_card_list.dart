
import 'package:ajuda/core/models/donation_location_model.dart';
import 'package:ajuda/core/utils/app_images.dart';
import 'package:ajuda/features/home/presentation/view/widgets/location_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
class LocationCardList extends StatelessWidget {
  const LocationCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => LocationCardItem(
          donationLocationModel: DonationLocationModel(
            imageUrl: AppImages.imagesLocation,
            locationName: 'Tanta',
          ),
        ),
        separatorBuilder: (context, index) => const Gap(10.0),
      ),
    );
  }
}
