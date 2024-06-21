import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  final Widget icon;
  final Widget text;
  final EdgeInsets? padding;

  const TextIcon({
    required this.icon,
    required this.text,
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: icon,
          ),
          text
        ],
      ),
    );
  }
}