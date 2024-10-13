import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ResetPasswordEnterEmail extends StatelessWidget {
  const ResetPasswordEnterEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: AppFonts.semiBold20,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset(AppIcons.iconsLock),
                const Gap(45),
                Text(
                  "Enter your email for the verification process, we will send 4 digits code to your email.",
                  style: AppFonts.medium14,
                ),
                const Gap(45),
                CustomTextFormFiled(
                  controller: TextEditingController(),
                  // validator: LoginCubit.get(context).emailValidator,
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const Gap(100),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // if (LoginCubit.get(context).formKey.currentState!.validate()) {
                      //   log('Login');
                      // }
                    },
                    child: Text(
                      'Send',
                      style: AppFonts.semiBold16.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
