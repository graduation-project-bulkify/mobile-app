import 'package:flutter/material.dart';

class CustomHomeTexts extends StatelessWidget {
  const CustomHomeTexts({required this.headLineName});
  final String headLineName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 23, bottom: 5),
      child: Text(
        headLineName,
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
