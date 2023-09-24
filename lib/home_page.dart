import 'package:flutter/material.dart';
import 'package:portfolio/components/sections/contact_section.dart';
import 'package:portfolio/components/sections/footer_section.dart';
import 'package:portfolio/components/sections/hero_section.dart';
import 'package:portfolio/components/myappbar.dart';
import 'package:portfolio/components/sections/skills_section.dart';
import 'package:portfolio/components/socials_row.dart';
import 'package:portfolio/components/sections/work_section.dart';
import 'package:rive/rive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = ScrollController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Scaffold(
        appBar: MyAppBar(context, () {
          _controller.animateTo(_controller.position.maxScrollExtent,
              duration: const Duration(milliseconds: 500),
              curve: Curves.decelerate);
        }),
        body: SingleChildScrollView(
            controller: _controller,
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 1000,
                    child: const RiveAnimation.network(
                      'https://public.rive.app/community/runtime-files/6112-11891-glowballs.riv',
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    // Hero Section
                    const HeroSection(),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Flutter developer, lifelong learner, and student with a passion for crafting apps that make a difference in people's lives.",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge!.apply(
                            fontFamily: 'FairplayDisplay',
                          ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),

                    // Socials
                    const SocialsRow(),

                    const SizedBox(
                      height: 100,
                    ),

                    // Skills
                    const SkillsSection(),

                    const SizedBox(
                      height: 100,
                    ),

                    // Work
                    const WorkSection(),

                    const SizedBox(
                      height: 100,
                    ),

                    const ContactSection(),
                    const SizedBox(height: 20),
                    const Divider(
                      height: 5,
                    ),
                    const SizedBox(height: 20),
                    const FooterSection(),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
