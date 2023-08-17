
import 'package:flutter/material.dart';
import 'package:santander/src/modules/themes/themes.dart';

import 'modules/pages/homepage.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomThemes.theme,
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
