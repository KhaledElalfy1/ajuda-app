import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class SavedDonationHeader extends StatelessWidget {
  const SavedDonationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        Text(
          "saved",
          style: AppFonts.semiBold20,
        ),
      ],
    );
  }
}
