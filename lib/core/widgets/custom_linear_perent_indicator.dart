
import 'package:ajuda/core/models/donation_model.dart';
import 'package:ajuda/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomLinearPercentIndicator extends StatelessWidget {
  const CustomLinearPercentIndicator({
    super.key,
    required this.donationModel,
  });

  final DonationModel donationModel;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      lineHeight: 10.0,
      addAutomaticKeepAlive: true,
      animation: true,
      animationDuration: 1000,
      barRadius: const Radius.circular(50),
      percent: double.parse(donationModel.donatedMoney) /
          double.parse(donationModel.donatedTotalMoney),
      backgroundColor: const Color(0xffFFE9B0),
      progressColor: AppColors.primaryColor,
    );
  }
}
