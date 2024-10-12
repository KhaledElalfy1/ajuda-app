 import 'package:ajuda/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar customAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: SvgPicture.asset(AppIcons.iconsAppLogo),
    );
  }