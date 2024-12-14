import 'package:ajuda/core/database/cache/cache_keys.dart';
import 'package:ajuda/core/database/cache/cashe_helper.dart';
import 'package:ajuda/core/database/cache/secure_storage.dart';
import 'package:ajuda/core/routers/app_routers.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/themes/themes.dart';
import 'package:ajuda/core/services/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

class AjudaApp extends StatelessWidget {
  const AjudaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: const Locale('en'),
          title: 'Ajuda',
          theme: appTheme(),
          home: FutureBuilder(
            future: initRouting(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Navigator(
                  onGenerateRoute: AppRouters().generateRoute,
                  initialRoute: snapshot.data,
                );
              }
              return CircularProgressIndicator();
            },
          ),
        );
      },
    );
  }

  Future<String> initRouting() async {
    final token = await SecureStorage.instance.getData(key: CacheKeys.token);
    bool isFirstTime = getIt<CacheHelper>().getData(key: CacheKeys.isFirstTime);
    if (token != null) {
      return Routing.home;
    } else if (isFirstTime) {
      return Routing.login;
    }
    return Routing.onboarding;
  }
}
