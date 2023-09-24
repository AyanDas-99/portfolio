import 'package:flutter/material.dart';
import 'package:portfolio/components/socials_row.dart';
import 'package:portfolio/components/text/heading.dart';
import 'package:url_launcher/url_launcher.dart' show launchUrl;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Heading('Get in touch'),
        const SizedBox(
          height: 50,
        ),
        Text(
          "Have a question, project idea, or just want to say hi? I'd love to hear from you! Feel free to reach out, and let's start a conversation.",
          softWrap: true,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 20,
        ),
        Wrap(
          children: [
            Text(
              'Send an email at ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse("mailto:ayandas9531@gmail.com"));
              },
              child: Text(
                'ayandas9531@gmail.com',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.blue),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Or',
          softWrap: true,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              'DM on ',
              softWrap: true,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              width: 20,
            ),
            const SocialsRow(),
          ],
        ),
      ],
    );
  }
}
