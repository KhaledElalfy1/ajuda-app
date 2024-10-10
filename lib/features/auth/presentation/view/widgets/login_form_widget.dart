import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormFiled(
            controller: TextEditingController(), //TODO rebuild with cubit
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          const Gap(15),
          CustomTextFormFiled(
            controller: TextEditingController(), //TODO rebuild with cubit
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility,
                color: Color(0xff818898),
              ),
            ),
          ),
          const Gap(5),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forget password?',
                style: AppFonts.regular12.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          const Gap(25),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign in',
                style: AppFonts.semiBold16.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
