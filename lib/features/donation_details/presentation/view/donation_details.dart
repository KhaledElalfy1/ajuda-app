import 'package:ajuda/core/models/donation_model.dart';
import 'package:flutter/material.dart';

class DonationDetails extends StatelessWidget {
  const DonationDetails({super.key, required this.donationModel});
  final DonationModel donationModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donation Details'),
      ),
      body: const Center(
        child: Text('Donation Details'),
      ),
    );
  }
}