import 'package:flutter/material.dart';
import 'package:portfolio/components/profile_picture.dart';
import 'package:portfolio/components/text/colored_intro.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
