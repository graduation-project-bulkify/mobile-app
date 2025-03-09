import 'package:flutter/material.dart';

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard(
      {required this.categoryImage, required this.categoryName});
  final String categoryImage;
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Stack(
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ],
                  borderRadius:
                      BorderRadius.circular(50), // Adding rounded corners
                ),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(50), // Same borderRadius value
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                  ),
                ),
              ),
              Positioned(
                left: 13,
                bottom: 13,
                child: Image.asset(
                  categoryImage,
                  height: 49,
                  width: 49,
                ),
              ),
            ],
          ),
        ),
        Text(
          categoryName,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold, // Correct usage
          ),
        ),
      ],
    );
  }
}
