import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomAuthLoading extends StatelessWidget {
  const CustomAuthLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LottieBuilder.asset(
        'assets/animation/loading.json',
        height: 56,
      ),
    );
  }
}
