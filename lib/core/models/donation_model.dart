class DonationModel {
  final String imageUrl;
  final String donationCategory;
  final bool isVerified;
  final String donationTitle;
  final String donatedMoney;
  final String donatedTotalMoney;
  final String donationLocation;
  final String totalViews;

  DonationModel(
      {required this.imageUrl,
      required this.donationCategory,
      required this.isVerified,
      required this.donationTitle,
      required this.donatedMoney,
      required this.donatedTotalMoney,
      required this.donationLocation,
      required this.totalViews});
}
