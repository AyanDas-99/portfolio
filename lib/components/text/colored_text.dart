import 'package:flutter/material.dart';
import 'package:portfolio/components/text/hoverable_text.dart';

class ColoredText extends StatefulWidget {
  const ColoredText({
    super.key,
    this.normal,
    this.colored,
    required this.style,
    this.animated = false,
  });
  final String? normal;
  final String? colored;
  final TextStyle style;
  final bool animated;

  @override
  State<ColoredText> createState() => _ColoredTextState();
}

class _ColoredTextState extends State<ColoredText> {
  Widget build(BuildContext context) {
    List<WidgetSpan> normalSpan = (widget.normal != null)
        ? widget.normal!
            .split('')
            .map((e) => WidgetSpan(
                  child: HoverableText(
                    hoverable: widget.animated,
                    character: e,
                    defaultSize: widget.style.fontSize!,
                    hoverSize: widget.style.fontSize! + 5,
                    style: widget.style,
                  ),
                ))
            .toList()
        : [];
    List<WidgetSpan> coloredSpan = (widget.colored != null)
        ? widget.colored!
            .split('')
            .map((e) => WidgetSpan(
                  child: HoverableText(
                    hoverable: widget.animated,
                    character: e,
                    defaultSize: widget.style.fontSize!,
                    hoverSize: widget.style.fontSize! + 5,
                    style: widget.style
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ))
            .toList()
        : [];

    return RichText(
      text: TextSpan(children: normalSpan + coloredSpan),
    );
  }
}
