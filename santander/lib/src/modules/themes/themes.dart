import 'package:flutter/material.dart';

class CustomThemes {
  static ThemeData get theme {
    final ThemeData base = ThemeData();
    return base.copyWith(
        useMaterial3: true,
        colorScheme: base.colorScheme.copyWith(
          primary: const Color(0xffc20003),
          secondary: Color.fromARGB(243, 246, 246, 238),
        ),
        primaryColor: const Color(0xffc20003),
        cardColor: Colors.white,
        scaffoldBackgroundColor: Colors.white);
  }
}
