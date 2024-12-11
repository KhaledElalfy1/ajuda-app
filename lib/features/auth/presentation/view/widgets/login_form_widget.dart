import 'package:ajuda/core/helpers/extentions.dart';
import 'package:ajuda/core/routers/routing.dart';
import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/widgets/custom_text_form_filed.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/password_text_filed_builder.dart';
import 'package:ajuda/features/auth/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:ajuda/features/auth/presentation/view_model/login_cubit/login_state.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: LoginCubit.get(context).formKey,
      child: Column(
        children: [
          CustomTextFormFiled(
            controller: LoginCubit.get(context).emailController,
            validator: LoginCubit.get(context).emailValidator,
            hintText: S.of(context).email,
            keyboardType: TextInputType.emailAddress,
          ),
          Gap(15.h),
          const PasswordTextFiledBuilder(),
          Gap(5.h),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                context.pushNamed(Routing.forgetPassword);
              },
              child: Text(
                S.of(context).forgotPassword,
                style: AppFonts.regular12.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          Gap(25.h),
          SizedBox(
            width: double.infinity,
            child: BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                if (state is LoginSuccess) {
                  context.pushReplacementNamed(Routing.home);
                }
              },
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    if (LoginCubit.get(context)
                        .formKey
                        .currentState!
                        .validate()) {
                      LoginCubit.get(context).signIn();
                    }
                  },
                  child: state is LoginLoading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Text(
                          S.of(context).signIn,
                          style: AppFonts.semiBold16.copyWith(
                            color: Colors.white,
                          ),
                        ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
