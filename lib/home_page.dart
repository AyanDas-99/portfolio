import 'package:flutter/material.dart';
import 'package:portfolio/components/hero_section.dart';
import 'package:portfolio/components/myappbar.dart';
import 'package:portfolio/components/skills_section.dart';
import 'package:portfolio/components/socials_row.dart';
import 'package:portfolio/components/work_section.dart';
import 'package:rive/rive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Scaffold(
        appBar: MyAppBar(context),
        body: SingleChildScrollView(
            child: Stack(
          children: [
            // SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   height: 1000,
            //   child: const RiveAnimation.asset(
            //       'assets/animations/rive-background-effect.riv'),
            // ),
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
              ],
            ),
          ],
        )),
      ),
    );
  }
}
