import 'package:flutter/material.dart';

class InputFormText extends StatelessWidget {
  final Widget label;
  final Widget child;
  final double spacing;

  const InputFormText({
    super.key,
    required this.label,
    required this.child,
    this.spacing = 10
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        label,
        SizedBox(height: spacing),
        child,
      ],
    );
  }
}
