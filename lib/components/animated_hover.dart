import 'package:flutter/material.dart';

class AnimatedHover extends StatefulWidget {
  final Widget child;
  final double scaleFactor;
  final int milliseconds;
  const AnimatedHover(
      {super.key,
      required this.child,
      this.scaleFactor = 1.1,
      this.milliseconds = 200});

  @override
  State<AnimatedHover> createState() => _AnimatedHoverState();
}

class _AnimatedHoverState extends State<AnimatedHover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedScale(
        scale: !isHovered ? 1 : widget.scaleFactor,
        duration: Duration(milliseconds: widget.milliseconds),
        child: widget.child,
      ),
    );
  }
}
