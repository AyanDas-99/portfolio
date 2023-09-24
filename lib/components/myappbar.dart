import 'package:flutter/material.dart';
import 'package:portfolio/components/text/colored_ayan_das.dart';
import 'package:portfolio/theme/theme_provider.dart';
import 'package:provider/provider.dart' show ReadContext;

PreferredSizeWidget myAppBar(
    BuildContext context, VoidCallback scrollToBottom) {
  return AppBar(
    backgroundColor: Colors.transparent,
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
          icon: const Icon(Icons.light)),
    ],
  );
}
