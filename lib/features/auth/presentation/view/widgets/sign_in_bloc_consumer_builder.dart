import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/widgets/custom_auth_loading.dart';
import 'package:ajuda/features/auth/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:ajuda/features/auth/presentation/view_model/login_cubit/login_state.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBlocConsumerBuilder extends StatelessWidget {
  const SignInBlocConsumerBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            context.pushNamedAndRemoveUntil(Routing.home,
                predicate: (route) => false);
          } else if (state is LoginFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
        },
        builder: (context, state) {
          return ElevatedButton(
            onPressed: () {
              if (LoginCubit.get(context).formKey.currentState!.validate()) {
                LoginCubit.get(context).signIn();
              }
            },
            child: state is LoginLoading
                ? const CustomAuthLoading()
                : Text(
                    S.of(context).signIn,
                    style: AppFonts.semiBold16.copyWith(
                      color: Colors.white,
                    ),
                  ),
          );
        },
      ),
    );
  }
}
