import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SliversGap extends StatelessWidget {
  const SliversGap(this.mainAxisExtent, {super.key});
  final double mainAxisExtent ;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Gap(mainAxisExtent),
    );
  }
}