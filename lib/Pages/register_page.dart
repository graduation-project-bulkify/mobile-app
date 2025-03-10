import 'package:bulkify/Pages/register_page2.dart';
import 'package:bulkify/constants.dart';
import 'package:bulkify/widgets/custom_divider.dart';
import 'package:bulkify/widgets/custom_socialMedia_registring.dart';
import 'package:bulkify/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff6a7f64), shape: BoxShape.circle),
              child: IconButton(
                  highlightColor: KPrimaryColor,
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  })),
        ),
        title: Text(
          "Sign Up",
          style: TextStyle(
              color: Color(0xFF61ae45),
              fontSize: 27,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 90),
              child: SvgPicture.asset('assets/images/register_image.svg'),
            ),
            Row(
              children: [
                CustomTextField(
                  hintText: 'First Name',
                  height: 52,
                  width: 173,
                  left: 20,
                  right: 3,
                ),
                CustomTextField(
                  hintText: 'Last Name',
                  height: 52,
                  width: 173,
                  left: 3,
                  right: 20,
                ),
              ],
            ),
            CustomTextField(hintText: 'Email', height: 52),
            CustomTextField(hintText: 'Password', height: 52),
            CustomTextField(hintText: 'Confirm Password', height: 52),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 5, top: 15),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: KPrimaryColor, fixedSize: Size(354, 46)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterPage2();
                    }));
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  )),
            ),
            CustomDivider(),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSocialmediaRegistring(
                  top: 3,
                  bottom: 0,
                  left: 15,
                  right: 15,
                  imageHeight: 46,
                  imagePath: 'assets/images/apple.png',
                ),
                SizedBox(
                  width: 15,
                ),
                CustomSocialmediaRegistring(
                  top: 6,
                  bottom: 0,
                  left: 15,
                  right: 15,
                  imageHeight: 44,
                  imagePath: 'assets/images/google.png',
                ),
                SizedBox(
                  width: 15,
                ),
                CustomSocialmediaRegistring(
                  top: 6,
                  bottom: 0,
                  left: 15,
                  right: 15,
                  imageHeight: 45,
                  imagePath: 'assets/images/facebook3.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
