import 'package:flutter/material.dart';

class CustomSocialmediaRegistring extends StatelessWidget {
  const CustomSocialmediaRegistring(
      {required this.containerPadding,
      required this.imageHeight,
      required this.imagePath});

  final double containerPadding;
  final double imageHeight;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(containerPadding),
      decoration: BoxDecoration(
        // the color must be inside BoxDecoration
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        imagePath,
        height: imageHeight,
      ),
    );
  }
}
