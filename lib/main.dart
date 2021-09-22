import 'package:casanareapp/pages/home.pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  MyApplication({Key? key}) : super(key: key);

  final ColorScheme colorScheme = ColorScheme(
    primary: Color.fromARGB(33, 37, 41, 1), // <---- I set white color here
    primaryVariant: Color(0xFF117378),
    secondary: Color(0xFFEFF3F3),
    secondaryVariant: Color(0xFFFAFBFB),
    background: Color(0xFF636363),
    surface: Color(0xFF808080),
    onBackground: Colors.white,
    error: Colors.redAccent,
    onError: Colors.redAccent,
    onPrimary: Colors.redAccent,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Pagina principal CasanareApp

      home: HomePage(),
    );
  }
}
