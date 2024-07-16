import 'package:flutter/material.dart';

class BodySmall extends StatelessWidget {
  final String text;

  const BodySmall(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelSmall,
    );
  }
}
