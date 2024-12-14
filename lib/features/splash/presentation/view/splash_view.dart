import 'package:ajuda/core/database/cache/cache_keys.dart';
import 'package:ajuda/core/database/cache/cashe_helper.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/services/get_it.dart';
import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/database/cache/secure_storage.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () => _initRouting(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SvgPicture.asset(AppIcons.iconsSplash),
      ),
    );
  }

  _initRouting() async {
    final token = await SecureStorage.instance.getData(key: CacheKeys.token);
    bool isFirstTime = getIt<CacheHelper>().getData(key: CacheKeys.isFirstTime);

    if (!mounted) return;

    if (token != null) {
      Navigator.pushReplacementNamed(context, Routing.home);
    } else if (isFirstTime) {
      Navigator.pushReplacementNamed(context, Routing.login);
    } else {
      Navigator.pushReplacementNamed(context, Routing.onboarding);
    }
  }
}
