import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';

class SavedDonationHeader extends StatelessWidget {
  const SavedDonationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            S.of(context).saved,
            style: AppFonts.semiBold20,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
