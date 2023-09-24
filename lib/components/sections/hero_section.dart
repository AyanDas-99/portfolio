import 'package:flutter/material.dart';
import 'package:portfolio/components/profile_picture.dart';
import 'package:portfolio/components/text/colored_intro.dart';
import 'package:portfolio/responsive/responsive.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isLargeDesktop(context)) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, I'm Ayan,",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).textTheme.titleLarge!.color,
                ),
              ),
              const ColoredIntro(),
            ],
          ),
          const ProfilePicture(),
        ],
      );
    } else {
      return Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ProfilePicture(),
            const SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, I'm Ayan,",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).textTheme.titleLarge!.color,
                  ),
                ),
                const ColoredIntro(),
              ],
            ),
          ],
        ),
      );
    }
  }
}
