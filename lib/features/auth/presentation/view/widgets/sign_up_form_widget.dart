import 'dart:developer';

import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/widgets/custom_text_form_filed.dart';
import 'package:ajuda/features/auth/presentation/view/widgets/agree_with_terms_section.dart';
import 'package:ajuda/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';
import 'package:ajuda/features/auth/presentation/view_model/sign_up_cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: SignUpCubit.get(context).formKey,
      child: Column(
        children: [
          CustomTextFormFiled(
            controller: SignUpCubit.get(context).nameController,
            hintText: "Name",
            validator: SignUpCubit.get(context).nameValidator,
            keyboardType: TextInputType.name,
          ),
          const Gap(15),
          CustomTextFormFiled(
            controller: SignUpCubit.get(context).emailController,
            validator: SignUpCubit.get(context).emailValidator,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          const Gap(15),
          BlocBuilder<SignUpCubit, SignUpState>(
            builder: (context, state) {
              return CustomTextFormFiled(
                controller: SignUpCubit.get(context).passwordController,
                validator: SignUpCubit.get(context).passwordValidator,
                obscureText: SignUpCubit.get(context).isPasswordVisible,
                hintText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                icon: IconButton(
                  onPressed: SignUpCubit.get(context).togglePasswordVisibility,
                  icon: Icon(
                    SignUpCubit.get(context).icon,
                    color: const Color(0xff818898),
                  ),
                ),
              );
            },
          ),
          const AgreeWithTermsSection(),
          const Gap(30),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (SignUpCubit.get(context).formKey.currentState!.validate()) {
                  if (!SignUpCubit.get(context).isAgreeWithTerms) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            'You must agree with terms of services and privacy policy'),
                      ),
                    );
                  }

                  log('Sign up');
                }
              },
              child: Text(
                'Sign up',
                style: AppFonts.semiBold16.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
