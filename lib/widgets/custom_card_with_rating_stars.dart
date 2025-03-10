import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomCardWithRatingStars extends StatefulWidget {
  const CustomCardWithRatingStars({super.key});

  @override
  State<CustomCardWithRatingStars> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCardWithRatingStars> {
  final double rating = 3.0; // Fixed rating value
  final int ratingCount = 120; // Number of people who rated

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3),
      child: Stack(
        children: [
          Container(
            width: 160,
            height: 230,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ⭐ Fixed RatingBar with green stars & number of people who rated ⭐
                    Row(
                      children: [
                        RatingBarIndicator(
                          rating: rating, // Fixed rating
                          itemSize: 18,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 0.2),
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.green, // Green stars
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "($ratingCount)", // Display number of people who rated
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Generic Pro AirPods',
                      style: TextStyle(fontSize: 10),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'EGP 900',
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 90,
            child: Image.asset(
              'assets/images/airpods.jpg',
              height: 120,
              width: 120,
            ),
          ),
        ],
      ),
    );
  }
}
