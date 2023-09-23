import 'package:flutter/material.dart';
import 'package:portfolio/components/project_card.dart';
import 'package:portfolio/components/text/heading.dart';
import 'package:portfolio/file/projects.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Heading('My Work'),
        const SizedBox(height: 50),
        Center(
          child: Wrap(
            children: Projects.projects
                .map((e) => ProjectCard(
                      name: e.name,
                      github: e.github,
                      image: e.image,
                      intro: e.intro,
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
