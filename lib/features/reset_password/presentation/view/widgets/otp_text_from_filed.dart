import 'package:flutter/material.dart';

class OtpTextFromFiled extends StatelessWidget {
  const OtpTextFromFiled(
      {super.key,
      required this.controller,
      required this.focusNode,
      this.validator,
      this.autoFocus = false});
  final TextEditingController controller;

  final FocusNode focusNode;

  final String? Function(String?)? validator;
  final bool autoFocus;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      validator: validator,
      autofocus: autoFocus,
      textAlign: TextAlign.center,
      maxLength: 1,
      decoration: const InputDecoration(
        fillColor: Color(0xffF6F8FA),
        filled: true,
        counterText: '',
      ),
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: TextInputType.number,
    );
  }
}
