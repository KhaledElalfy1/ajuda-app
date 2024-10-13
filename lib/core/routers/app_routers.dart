import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/features/auth/presentation/view/login_view.dart';
import 'package:ajuda/features/auth/presentation/view/sign_up_view.dart';
import 'package:ajuda/features/auth/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:ajuda/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';
import 'package:ajuda/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:ajuda/features/reset_password/presentation/view/reset_password_enter_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouters {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routing.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routing.signUp:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => SignUpCubit(),
                  child: const SignUpView(),
                ));
      case Routing.login:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => LoginCubit(),
                  child: const LoginView(),
                ));
      case Routing.home:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routing.profile:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routing.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ResetPasswordEnterEmail());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
