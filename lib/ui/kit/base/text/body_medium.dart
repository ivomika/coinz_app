import 'package:flutter/material.dart';

class BodyMedium extends StatelessWidget {
  final String text;

  const BodyMedium(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
