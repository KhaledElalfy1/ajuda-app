import 'package:ajuda/core/widgets/custom_decorated_body.dart';
import 'package:ajuda/features/saved_donations/presentation/view/widgets/saved_donation_body.dart';
import 'package:ajuda/features/saved_donations/presentation/view/widgets/saved_donation_header.dart';
import 'package:flutter/material.dart';

class SavedDonationsView extends StatelessWidget {
  const SavedDonationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomDecoratedBody(
        headerChild: SavedDonationHeader(),
        bodyChild: SavedDonationBody(),
      ),
    );
  }
}
