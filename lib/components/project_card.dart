import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_hover.dart';
import 'package:portfolio/project_page.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final String name;
  final String github;
  final String image;
  final String intro;

  const ProjectCard({
    super.key,
    required this.name,
    required this.github,
    required this.image,
    required this.intro,
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
      child: MouseRegion(
        onEnter: (_) {
          // setState(() {
          //   isHovered = true;
          // });
          _controller.forward();
        },
        onExit: (_) {
          // setState(() {
          //   isHovered = false;
          // });
          _controller.reverse();
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              image: DecorationImage(image: AssetImage(widget.image)),
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
                          color:
                              Color.fromARGB(255, 18, 41, 53).withOpacity(0.5),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Transform.translate(
                                  offset: Offset(0, -_animation.value / 3.3),
                                  child: Text(
                                    widget.name,
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
                                  widget.intro,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AnimatedHover(
                                        scaleFactor: 1.5,
                                        milliseconds: 100,
                                        child: InkWell(
                                          onTap: () {
                                            launchUrl(Uri.parse(widget.github));
                                          },
                                          child: Image.asset(
                                            'assets/icons/github-mark-white.png',
                                            width: 40,
                                          ),
                                        )),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    AnimatedHover(
                                        scaleFactor: 1.5,
                                        milliseconds: 100,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProjectPage(),
                                                ));
                                          },
                                          child: const Icon(
                                            Icons.file_open,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        )),
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
    );
  }
}
