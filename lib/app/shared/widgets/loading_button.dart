import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingButton extends StatelessWidget {
  final bool loading;
  final Widget child;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  const LoadingButton({
    super.key,
    required this.child,
    this.onPressed,
    this.loading = false,
    this.backgroundColor
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: !loading ? onPressed : () {},
      child: child
    );
  }
}