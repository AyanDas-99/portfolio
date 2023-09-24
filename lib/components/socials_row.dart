import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_hover.dart';
import 'package:portfolio/components/icon_and_link.dart';
import 'package:portfolio/theme/theme_provider.dart';
import 'package:provider/provider.dart' show WatchContext;

class SocialsRow extends StatelessWidget {
  const SocialsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedHover(
          child: IconAndLink(
            path:
                (context.watch<ThemeModeProvider>().themeMode == ThemeMode.dark)
                    ? 'assets/icons/x_logo-white.png'
                    : 'assets/icons/x_logo-black.png',
            link: 'https://twitter.com/AyanDas_',
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const AnimatedHover(
          child: IconAndLink(
            path: 'assets/icons/linkedin.png',
            link: 'https://www.linkedin.com/in/ayan-das-b2a9831b8',
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        AnimatedHover(
          child: IconAndLink(
            path:
                (context.watch<ThemeModeProvider>().themeMode == ThemeMode.dark)
                    ? 'assets/icons/github-mark-white.png'
                    : 'assets/icons/github-mark.png',
            link: 'https://github.com/AyanDas-99',
          ),
        ),
      ],
    );
  }
}
