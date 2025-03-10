import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3),
      child: Stack(
        children: [
          Container(
            width: 160,
            height: 220,
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
                      height: 3,
                    ),
                    Text(
                      'Numbers Of ',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Contributors:',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '3 out of 12 ',
                      style: TextStyle(fontSize: 12, color: Colors.green),
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
            left: 25,
            bottom: 105,
            child: Image.asset(
              'assets/images/airpods.jpg',
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
