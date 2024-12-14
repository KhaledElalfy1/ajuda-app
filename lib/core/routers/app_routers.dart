import 'package:ajuda/core/models/donation_model.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/services/get_it.dart';
import 'package:ajuda/features/auth/data/repo/auth_repo.dart';
import 'package:ajuda/features/auth/presentation/view/login_view.dart';
import 'package:ajuda/features/auth/presentation/view/sign_up_view.dart';
import 'package:ajuda/features/auth/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:ajuda/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';
import 'package:ajuda/features/donation_details/presentation/view/donation_details.dart';
import 'package:ajuda/features/main/presentation/view/main_view.dart';
import 'package:ajuda/features/main/presentation/view_model/navigation_cubit/navigation_cubit.dart';
import 'package:ajuda/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:ajuda/features/reset_password/presentation/view/enter_email_view.dart';
import 'package:ajuda/features/reset_password/presentation/view/otp_view.dart';
import 'package:ajuda/features/reset_password/presentation/view/reset_password_view.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';
import 'package:ajuda/features/saved_donations/presentation/view/saved_donations_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouters {
  Route generateRoute(RouteSettings settings) {
   var argument=settings.arguments;
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
                  create: (context) => LoginCubit(getIt<AuthRepo>()),
                  child: const LoginView(),
                ));
      case Routing.home:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => NavigationCubit(),
                  child: const MainView(),
                ));
      case Routing.profile:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routing.savedDonations:
        return MaterialPageRoute(builder: (_) => const SavedDonationsView());
      case Routing.donationDetails:
        return MaterialPageRoute(builder: (_) =>  DonationDetails(donationModel: argument as DonationModel,));
      case Routing.forgetPassword:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<ForgetPasswordCubit>(),
                  child: const EnterEmailView(),
                ));
      case Routing.enterOTP:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<ForgetPasswordCubit>(),
                  child: const OtpView(),
                ));
      case Routing.restPassword:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<ForgetPasswordCubit>(),
                  child: const ResetPasswordView(),
                ));
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
