import 'package:coinz_app/ui/kit/base/theme/theme_model.dart';
import 'package:coinz_app/ui/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class MaterialApplication extends StatelessWidget {
  const MaterialApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter coinz',
      theme: ThemeModel.light,
      darkTheme: ThemeModel.dark,
      themeMode: ThemeModel.mode,
      home: const HomePage(),
    );
  }
}
