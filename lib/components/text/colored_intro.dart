import 'package:flutter/material.dart';
import 'package:portfolio/components/text/colored_text.dart';

class ColoredIntro extends StatelessWidget {
  const ColoredIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ColoredText(
        normal: 'YOUR FRIENDLY',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(letterSpacing: 3)
            .apply(
              fontSizeFactor: 1.5,
            ),
        animated: true,
      ),
      ColoredText(
        normal: 'NEIGHBOURHOOD',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(
              letterSpacing: 3,
            )
            .apply(fontSizeFactor: 1.5),
        animated: true,
      ),
      ColoredText(
        colored: 'DEVELOPER',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(letterSpacing: 3)
            .apply(fontSizeFactor: 1.5),
        animated: true,
      ),
    ]);
  }
}
