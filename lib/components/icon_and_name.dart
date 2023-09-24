import 'package:flutter/material.dart';
import 'package:portfolio/responsive/responsive.dart';

class IconAndName extends StatelessWidget {
  final String path;
  final String name;
  const IconAndName(this.path, this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    double size = Responsive.isTab(context) ? 80 : 50;
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Image.asset(
            path,
            height: size,
            width: size,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style:
                TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color),
          ),
        ],
      ),
    );
  }
}
