import 'package:flutter/material.dart';

class Caption extends StatelessWidget {
  final String text;

  const Caption(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
