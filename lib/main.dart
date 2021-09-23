import 'package:casanareapp/pages/home.pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //Pagina principal CasanareApp

      home: HomePage(),
    );
  }
}
