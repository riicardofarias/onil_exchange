import 'package:flutter/material.dart';
import 'package:onil/app/shared/widgets/loading_button.dart';
import 'package:onil/app/theme/app_theme.dart';

class ContainerButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final Border? borderTop;
  final Color? backgroundColor;
  final bool busy;
  final EdgeInsets? padding;

  const ContainerButton({
    super.key,
    required this.child,
    this.onPressed,
    this.borderTop,
    this.backgroundColor,
    this.busy = false,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: borderTop ?? Border(
                top: BorderSide(color: Colors.grey[100]!, width: 1.5)
              )
            ),
          ),
          Container(
            padding: padding ?? const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: !busy ? onPressed : () {},
              child: child
            ),
          ),
          Visibility(
            visible: busy,
            child: LinearProgressIndicator(
              backgroundColor: Colors.transparent,
            )
          )
        ],
      ),
    );
  }
}