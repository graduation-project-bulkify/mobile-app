import 'package:bulkify/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.hintText,
    this.width,
    required this.height,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });

  final String? hintText;
  final double? width; // Control width
  final double? height; // Control height

  final double? top;
  final double? left;
  final double? right;
  final double? bottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: top ?? 5,
        left: left ?? 20,
        right: right ?? 20,
        bottom: bottom ?? 5,
      ),
      child: SizedBox(
        width: width ?? double.infinity, // Default: takes full width
        height: height ?? 50, // Default height: 50 pixels
        child: TextField(
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
            fillColor: const Color(0xFFebf7e7),
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(color: Color(0xFF9f9f9f), fontSize: 18),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: KPrimaryColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: KPrimaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
