import 'package:flutter/material.dart';

class IconAndName extends StatelessWidget {
  final String path;
  final String name;
  const IconAndName(this.path, this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Image.asset(
            path,
            height: 80,
            width: 80,
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
