import 'package:bulkify/Pages/home_page.dart';
import 'package:bulkify/Pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Bulkify());
}

class Bulkify extends StatelessWidget {
  const Bulkify({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
