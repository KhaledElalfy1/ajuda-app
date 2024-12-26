import 'package:ajuda/core/models/donation_model.dart';
import 'package:ajuda/core/utils/app_images.dart';
import 'package:ajuda/core/widgets/donation_case_card_item.dart';
import 'package:flutter/material.dart';

class SavedDonationBody extends StatelessWidget {
  const SavedDonationBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: GridView.builder(
        itemCount: 5,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) => DonationCaseCardItem(
          donationModel: DonationModel(
              imageUrl: AppImages.imagesDonationLocation,
              donationCategory: 'Bantubarengan',
              isVerified: true,
              donationTitle: 'Bantu muslim indonesia ke mekkah.',
              donatedMoney: '12000',
              donatedTotalMoney: '24000',
              donationLocation: 'Jakarta',
              totalViews: '10k',
              donationDescription:
                  'Lorem ipsum dolor sit amet consectetur. Ultricies ut augue amet vel hac. Ut orci adipiscing fusce lacus lectus rhoncus.'),
        ),
      ),
    );
  }
}
