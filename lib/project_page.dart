import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_hover.dart';
import 'package:portfolio/components/icon_and_link.dart';
import 'package:portfolio/components/text/heading.dart';
import 'package:portfolio/file/project_model.dart';
import 'package:portfolio/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPage extends StatelessWidget {
  final ProjectModel project;
  const ProjectPage(this.project, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          project.name.toUpperCase(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
        surfaceTintColor: Colors.transparent,
        actions: [
          if (project.link != null)
            ElevatedButton(
              onPressed: () {
                launchUrl(Uri.parse(project.link!));
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Live',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.open_in_new)
                ],
              ),
            ),
          if (project.github != null)
            TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(project.github!));
                },
                child: Text(
                  'CODE',
                  style: Theme.of(context).textTheme.displayMedium,
                ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      project.image,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Text(
                      project.desc ?? project.intro,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'FairplayDisplay',
                          fontWeight: FontWeight.bold,
                          height: 2),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              if (project.techUsed != null)
                Row(
                  children: [
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(100),
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              Colors.pinkAccent.shade100,
                              Colors.pink.shade100,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tech Used',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              project.techUsed!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              if (project.learnings != null)
                Transform.translate(
                  offset: const Offset(0, -50),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(100),
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Colors.blueAccent.shade200,
                                Colors.lightBlueAccent.shade100,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'What I Learned',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                project.learnings!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              const SizedBox(
                height: 50,
              ),
              if (project.link != null)
                ElevatedButton(
                  onPressed: () {
                    launchUrl(Uri.parse(project.link!));
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Live',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.open_in_new)
                    ],
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              if (project.github != null)
                AnimatedHover(
                  child: IconAndLink(
                    path: (context.watch<ThemeModeProvider>().themeMode ==
                            ThemeMode.dark)
                        ? 'assets/icons/github-mark-white.png'
                        : 'assets/icons/github-mark.png',
                    link: project.github!,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
