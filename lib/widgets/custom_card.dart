import 'package:flutter/material.dart';

class CustomeCard extends StatelessWidget {
  const CustomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3),
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 210,
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
                    Text(
                      'Generic Pro Air Pods',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'EGP900',
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 80,
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
