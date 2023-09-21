import 'package:flutter/material.dart';
import 'package:portfolio/components/text/colored_text.dart';

class ColoredAyanDas extends StatelessWidget {
  const ColoredAyanDas({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredText(
      normal: 'Ayan',
      colored: 'Das',
      style: Theme.of(context).textTheme.titleMedium!,
    );
  }
}
