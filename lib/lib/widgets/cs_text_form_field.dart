import 'package:flutter/material.dart';

class CsTextFormField extends StatelessWidget {
  const CsTextFormField({
    required this.hintText,
    required this.labelText,
    this.maxLength,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
    super.key,
  });

  final String hintText;
  final String labelText;
  final int? maxLength;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
      ),
      maxLength: maxLength,
      validator: validator,
      obscureText: obscureText,
    );
  }
}
