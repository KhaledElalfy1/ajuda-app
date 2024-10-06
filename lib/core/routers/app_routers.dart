import 'package:ajuda/core/routers/routing.dart';
import 'package:flutter/material.dart';

 class AppRouters {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routing.onboarding:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routing.signUp:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routing.login:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routing.home:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routing.profile:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routing.forgetPassword:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
