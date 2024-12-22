
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/utils/app_icons.dart';
import 'package:ajuda/core/widgets/custom_text_form_filed.dart';
import 'package:ajuda/features/reset_password/presentation/view/widgets/send_email_bloc_consumer_builder.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class EnterEmailView extends StatelessWidget {
  const EnterEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.current.resetPassword,
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
                  S.of(context).enterEmail,
                  style: AppFonts.medium14,
                ),
                const Gap(45),
                Form(
                  key: ForgetPasswordCubit.get(context).emailFormKey,
                  child: CustomTextFormFiled(
                    controller:
                        ForgetPasswordCubit.get(context).emailController,
                    validator: ForgetPasswordCubit.get(context).emailValidator,
                    hintText: S.of(context).email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const Gap(100),
               const SendEmailBlocConsumerBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

