import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    this.obscureText = false,
    this.icon,
    this.validator,
  });
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? icon;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: icon,
      ),
    );
  }
}
