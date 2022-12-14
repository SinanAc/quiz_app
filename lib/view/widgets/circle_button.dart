import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.child,
    this.color,
    this.ontap,
    this.width = 60,
  });
  final Widget child;
  final Color? color;
  final double width;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      clipBehavior: Clip.hardEdge,
      shape: const CircleBorder(),
      child: InkWell(
        onTap: ontap,
        child: child,
      ),
    );
  }
}
