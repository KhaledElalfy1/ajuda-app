import 'package:ajuda/core/routers/app_routers.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/themes/themes.dart';
import 'package:flutter/material.dart';

class AjudaApp extends StatelessWidget {
  const AjudaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routing.onboarding,
      title: 'Ajuda',
      theme: appTheme(),
     onGenerateRoute: AppRouters().generateRoute,
    );
  }
}