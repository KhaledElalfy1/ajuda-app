
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class DonationDetailsHeader extends StatelessWidget {
  const DonationDetailsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'Details',
            style: AppFonts.semiBold20,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_border_outlined,
          ),
        ),
      ],
    );
  }
}
