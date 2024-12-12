import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CustomAuthLoading extends StatelessWidget {
  const CustomAuthLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: Colors.white,
        ),
        height: 200.h,
        child: LottieBuilder.asset('assets/animation/loading.json'),
      ),
    );
  }
}
