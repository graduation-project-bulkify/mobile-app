import 'package:bulkify/Pages/forgot_password_page.dart';
import 'package:bulkify/Pages/register_page.dart';
import 'package:bulkify/constants.dart';
import 'package:bulkify/widgets/custom_divider.dart';
import 'package:bulkify/widgets/custom_socialMedia_registring.dart';
import 'package:bulkify/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
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
          "Log In",
          style: TextStyle(
              color: KPrimaryColor, fontSize: 27, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 80),
                child: SvgPicture.asset('assets/images/login_image.svg')),
            Padding(
              padding:
                  const EdgeInsets.only(top: 6, left: 20, right: 20, bottom: 5),
              child: CustomTextField(hintText: 'Email'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 5, left: 20, right: 20, bottom: 15),
              child: CustomTextField(hintText: 'Password'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: KPrimaryColor, fixedSize: Size(354, 45)),
                  onPressed: () {},
                  child: const Text(
                    'Log In',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 21, right: 4),
                  child: Text(
                    "Don't have an account?",
                    style: TextStyle(color: Color(0xFF9f9f9f)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 4),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Create one!",
                      style: TextStyle(
                          color: KPrimaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 3, left: 21, right: 4, bottom: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ForgotPasswordPage();
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: KPrimaryColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            CustomDivider(),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSocialmediaRegistring(
                  containerPadding: 15,
                  imageHeight: 41,
                  imagePath: 'assets/images/apple.png',
                ),
                SizedBox(
                  width: 15,
                ),
                CustomSocialmediaRegistring(
                  containerPadding: 16,
                  imageHeight: 40,
                  imagePath: 'assets/images/google.png',
                ),
                SizedBox(
                  width: 15,
                ),
                CustomSocialmediaRegistring(
                  containerPadding: 10,
                  imageHeight: 53,
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
