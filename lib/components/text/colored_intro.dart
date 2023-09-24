import 'package:flutter/material.dart';
import 'package:portfolio/components/text/colored_text.dart';
import 'package:portfolio/responsive/responsive.dart';

class ColoredIntro extends StatelessWidget {
  const ColoredIntro({super.key});

  @override
  Widget build(BuildContext context) {
    late double scaleFactor = 1;
    if (Responsive.isDesktop(context)) {
      scaleFactor = 1.5;
    } else if (Responsive.isTab(context)) {
      scaleFactor = 1.3;
    } else if (Responsive.isPhone(context)) {
      scaleFactor = 1.2;
    } else {
      scaleFactor = 0.5;
    }

    if (Responsive.isTab(context)) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ColoredText(
          normal: 'YOUR FRIENDLY',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(letterSpacing: 3)
              .apply(
                fontSizeFactor: scaleFactor,
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
              .apply(fontSizeFactor: scaleFactor),
          animated: true,
        ),
        ColoredText(
          colored: 'DEVELOPER',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(letterSpacing: 3)
              .apply(fontSizeFactor: scaleFactor),
          animated: true,
        ),
      ]);
    } else {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ColoredText(
          normal: 'YOUR',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(letterSpacing: 3)
              .apply(
                fontSizeFactor: scaleFactor,
              ),
          animated: true,
        ),
        ColoredText(
          normal: 'FRIENDLY',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(letterSpacing: 3)
              .apply(
                fontSizeFactor: scaleFactor,
              ),
          animated: true,
        ),
        ColoredText(
          normal: 'NEIGHBOUR',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(
                letterSpacing: 3,
              )
              .apply(fontSizeFactor: scaleFactor),
          animated: true,
        ),
        ColoredText(
          normal: 'HOOD',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(
                letterSpacing: 3,
              )
              .apply(fontSizeFactor: scaleFactor),
          animated: true,
        ),
        ColoredText(
          colored: 'DEVELOPER',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(letterSpacing: 3)
              .apply(fontSizeFactor: scaleFactor),
          animated: true,
        ),
      ]);
    }
  }
}
