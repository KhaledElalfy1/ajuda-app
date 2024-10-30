import 'package:ajuda/core/models/donation_location_model.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationCardItem extends StatelessWidget {
  const LocationCardItem({
    super.key,
    required this.donationLocationModel,
  });
  final DonationLocationModel donationLocationModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 240.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              donationLocationModel.imageUrl,
              height: 150.h,
              width: 240.w,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 5,
            left: 15,
            child: Text(
              donationLocationModel.locationName,
              style: AppFonts.semiBold16.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
