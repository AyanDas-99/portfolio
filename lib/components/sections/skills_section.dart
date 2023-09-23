import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_hover.dart';
import 'package:portfolio/components/icon_and_name.dart';
import 'package:portfolio/components/text/heading.dart';
import 'package:portfolio/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Heading('My Skills'),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Wrap(alignment: WrapAlignment.center, children: [
                const AnimatedHover(
                    child: IconAndName('assets/icons/Dart_logo.png', 'DART')),
                const AnimatedHover(
                    child: IconAndName('assets/icons/flutter.png', 'FLUTTER')),
                const AnimatedHover(
                    child: IconAndName('assets/icons/html_icon.png', 'HTML')),
                const AnimatedHover(
                    child: IconAndName('assets/icons/css_icon.png', 'CSS')),
                const AnimatedHover(
                    child:
                        IconAndName('assets/icons/js_icon.png', 'JAVASCRIPT')),
                const AnimatedHover(
                    child:
                        IconAndName('assets/icons/react_icon.png', 'REACT JS')),
                const AnimatedHover(
                    child: IconAndName('assets/icons/git_icon.png', 'GIT')),
                AnimatedHover(
                    child: IconAndName(
                        (context.watch<ThemeModeProvider>().themeMode ==
                                ThemeMode.dark)
                            ? 'assets/icons/github-mark-white.png'
                            : 'assets/icons/github-mark.png',
                        'GITHUB')),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
