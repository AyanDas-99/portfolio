import 'package:flutter/material.dart';
import 'package:portfolio/components/text/colored_ayan_das.dart';
import 'package:portfolio/theme/theme_provider.dart';
import 'package:provider/provider.dart';

PreferredSizeWidget MyAppBar(
    BuildContext context, VoidCallback scrollToBottom) {
  return AppBar(
    surfaceTintColor: Colors.transparent,
    leadingWidth: 100,
    leading: const ColoredAyanDas(),
    actions: [
      ElevatedButton(
          onPressed: () => scrollToBottom(), child: const Text('Contact Me')),
      IconButton(
          onPressed: () {
            context.read<ThemeModeProvider>().toggle();
          },
          icon: Icon(Icons.light)),
    ],
  );
}
