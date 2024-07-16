import 'package:coinz_app/ui/kit/base/constants/offset.dart';
import 'package:coinz_app/ui/kit/molecule/sub_title/sub_title.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter coinz',
      theme: FlexThemeData.light(scheme: FlexScheme.deepBlue),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.deepBlue),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Flutter coinz'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubTitle(
            title: 'Coinz Title',
            actions: [
              IconButton(
                  onPressed: (){},
                  splashRadius: OffsetConstants.normal.size,
                  icon: const Icon(Icons.add)
              )
            ],
          )
        ],
      )
    );
  }
}
