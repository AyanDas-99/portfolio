import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Made with 🤍 using Flutter | AYAN DAS',
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
