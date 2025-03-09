import 'package:bulkify/constants.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
            child: Divider(
              indent: 20.0,
              endIndent: 10.0,
              thickness: 1,
            ),
          ),
          Text(
            "Sign up with",
            style: TextStyle(color: KPrimaryColor, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Divider(
              indent: 10.0,
              endIndent: 20.0,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
