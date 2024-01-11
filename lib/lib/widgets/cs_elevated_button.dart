import 'package:flutter/material.dart';

class CsElevatedButton extends StatelessWidget {
  const CsElevatedButton({
    required this.onPressed,
    required this.label,
    super.key,
  });

  final void Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(label));
  }
}
