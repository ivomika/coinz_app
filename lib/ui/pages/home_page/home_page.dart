import 'package:coinz_app/ui/kit/molecule/pin_input/pin_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Главная',
              style: Theme.of(context).textTheme.titleMedium?.apply(
                  color: Theme.of(context).appBarTheme.foregroundColor)),
        ),
        body: const Center(
            child: PinInput()
        )
    );
  }
}
