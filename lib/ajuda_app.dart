
import 'package:ajuda/core/database/cache/cashe_helper.dart';
import 'package:ajuda/core/routers/app_routers.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/themes/themes.dart';
import 'package:ajuda/core/utils/get_it.dart';
import 'package:flutter/material.dart';

class AjudaApp extends StatelessWidget {
  const AjudaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:initRouting() ,
      title: 'Ajuda',
      theme: appTheme(),
      onGenerateRoute: AppRouters().generateRoute,
    );
  }

  String initRouting() {
    if (getIt<CacheHelper>().getData(key: CacheKeys.isFirstTime)) {
      return Routing.login;
    }
    return Routing.onboarding;
  }
}
