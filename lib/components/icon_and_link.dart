import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconAndLink extends StatelessWidget {
  final String path;
  final String link;

  const IconAndLink({
    super.key,
    required this.path,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          await launchUrl(Uri.parse(link));
        },
        child: Image.asset(
          path,
          height: 30,
          width: 30,
        ));
  }
}
