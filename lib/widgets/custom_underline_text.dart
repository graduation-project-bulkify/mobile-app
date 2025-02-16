import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomUnderlineText extends StatelessWidget {
  CustomUnderlineText({required this.textName});
  String textName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 0.1),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      child: Text(
        textName,
      ),
    );
  }
}
