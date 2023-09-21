import 'package:flutter/material.dart';

class HoverableText extends StatefulWidget {
  final String character;
  final double defaultSize;
  final double hoverSize;
  final TextStyle style;
  final bool hoverable;

  const HoverableText({
    super.key,
    required this.style,
    required this.character,
    required this.defaultSize,
    required this.hoverSize,
    this.hoverable = false,
  });

  @override
  _HoverableTextState createState() => _HoverableTextState();
}

class _HoverableTextState extends State<HoverableText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        if (widget.hoverable) {
          setState(() {
            isHovered = true;
          });
        }
      },
      onExit: (_) {
        if (widget.hoverable) {
          setState(() {
            isHovered = false;
          });
        }
      },
      child: AnimatedScale(
        scale: !isHovered ? 1 : 1.2,
        duration: const Duration(milliseconds: 200),
        child: AnimatedRotation(
          turns: !isHovered ? 1 : 1.05,
          duration: const Duration(milliseconds: 150),
          child: Text(
            widget.character,
            style: widget.style,
          ),
        ),
      ),
    );
  }
}
