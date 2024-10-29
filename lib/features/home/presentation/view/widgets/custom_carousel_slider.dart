import 'package:ajuda/core/utils/app_images.dart';
import 'package:ajuda/features/home/data/models/advertisement_model.dart';
import 'package:ajuda/features/home/presentation/view/widgets/advertisement_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          AdvertisementContainer(
            advertisementModel: AdvertisementModel(
              imagePath: AppImages.imagesDonationOne,
              title: 'Bantu saudara muslim pelosok untuk mengaji.',
            ),
          ),
          AdvertisementContainer(
            advertisementModel: AdvertisementModel(
              imagePath: AppImages.imagesDonationTwo,
              title: 'Bantu saudara muslim pelosok untuk mengaji.',
            ),
          ),
        ],
        options: CarouselOptions(
          aspectRatio: 260.w / 140.h,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (index, reason) {},
          scrollDirection: Axis.horizontal,
        ));
  }
}
