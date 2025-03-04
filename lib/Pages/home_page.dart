import 'package:bulkify/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              KLogo,
              height: 45,
            ),
            const SizedBox(width: 7),
            Expanded(
              // Ensures the TextField takes the remaining space
              child: Container(
                height: 37,
                child: TextField(
                  style: TextStyle(
                    fontSize: 16, // Change input text size
                    fontWeight: FontWeight.w500, // Optional: Adjust weight
                    color: Colors.black, // Optional: Change text color
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    suffixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle:
                        TextStyle(color: Color(0xFF9f9f9f), fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [Text('hello')],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 15, right: 10, left: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 3,
                ),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: KPrimaryColor,
                          width: 3,
                        ),
                      ),
                    ),
                    child: Image.asset("assets/images/Mask group.png")),
                Spacer(
                  flex: 1,
                ),
                Container(
                  child: Image.asset('assets/images/User.png'),
                ),
                Spacer(
                  flex: 3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
