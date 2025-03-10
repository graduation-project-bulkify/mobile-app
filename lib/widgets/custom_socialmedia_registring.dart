import 'package:flutter/material.dart';

class CustomSocialmediaRegistring extends StatelessWidget {
  const CustomSocialmediaRegistring({
    required this.imageHeight,
    required this.imagePath,
    required this.top,
    required this.bottom,
    required this.left,
    required this.right,
  });

  final double top;
  final double bottom;
  final double left;
  final double right;
  final double imageHeight;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: top,
        bottom: bottom,
        left: left,
        right: right,
      ),
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
