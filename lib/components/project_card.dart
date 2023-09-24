import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_hover.dart';
import 'package:portfolio/file/project_model.dart';
import 'package:portfolio/project_page.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final ProjectModel project;

  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard>
    with SingleTickerProviderStateMixin {
  bool isHovered = false;

  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation = Tween<double>(begin: 330, end: 0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.decelerate));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          _controller.forward();
        },
        child: MouseRegion(
          onEnter: (event) {
            if (event.down) {
              _controller.forward();
            }
            _controller.forward();
          },
          onExit: (_) {
            _controller.reverse();
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.,
                image: DecorationImage(image: AssetImage(widget.project.image)),
              ),
              width: 400,
              height: 400,
              child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(0, _animation.value),
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            width: 400,
                            height: 400,
                            padding: const EdgeInsets.all(10),
                            color: Color.fromARGB(255, 18, 41, 53)
                                .withOpacity(0.5),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Transform.translate(
                                    offset: Offset(0, 0),
                                    child: Text(
                                      widget.project.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    widget.project.intro,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (widget.project.github != null)
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: AnimatedHover(
                                              scaleFactor: 1.5,
                                              milliseconds: 100,
                                              child: InkWell(
                                                onTap: () {
                                                  launchUrl(Uri.parse(
                                                      widget.project.github!));
                                                },
                                                child: Image.asset(
                                                  'assets/icons/github-mark-white.png',
                                                  width: 40,
                                                ),
                                              )),
                                        ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: AnimatedHover(
                                            scaleFactor: 1.5,
                                            milliseconds: 100,
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          ProjectPage(
                                                              widget.project),
                                                    ));
                                              },
                                              child: const Icon(
                                                Icons.file_open,
                                                color: Colors.white,
                                                size: 40,
                                              ),
                                            )),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
