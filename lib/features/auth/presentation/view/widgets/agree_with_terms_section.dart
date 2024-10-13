import 'package:ajuda/core/utils/app_colors.dart';
import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';
import 'package:ajuda/features/auth/presentation/view_model/sign_up_cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgreeWithTermsSection extends StatelessWidget {
  const AgreeWithTermsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<SignUpCubit, SignUpState>(
          builder: (context, state) {
            return Checkbox(
              value: SignUpCubit.get(context).isAgreeWithTerms,
              onChanged: (value) {
                SignUpCubit.get(context).agreeWithTerms();
              },
              activeColor: AppColors.primaryColor,
            );
          },
        ),
        Text(
          'I agree ',
          style: AppFonts.regular12,
        ),
        Text(
          'Terms of Services',
          style: AppFonts.regular12.copyWith(
            color: AppColors.primaryColor,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.primaryColor,
          ),
        ),
        Text(
          ' and ',
          style: AppFonts.regular12,
        ),
        Text(
          'Privacy Policy ',
          style: AppFonts.regular12.copyWith(
            color: AppColors.primaryColor,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
