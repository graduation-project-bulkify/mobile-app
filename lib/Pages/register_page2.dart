import 'package:bulkify/Pages/privacy_policy_page.dart';
import 'package:bulkify/Pages/terms_of_services_page.dart';
import 'package:bulkify/constants.dart';
import 'package:bulkify/widgets/custom_text_field.dart';
import 'package:bulkify/widgets/custom_underline_text.dart';
import 'package:flutter/material.dart';

class RegisterPage2 extends StatefulWidget {
  @override
  State<RegisterPage2> createState() => _RegisterPage2State();
}

class _RegisterPage2State extends State<RegisterPage2> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(7),
          child: Container(
              margin: EdgeInsets.all(2),
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
          "Personal Info",
          style: TextStyle(
              color: Color(0xFF61ae45),
              fontSize: 27,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
              child: CustomTextField(hintText: 'National ID'),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
              child: CustomTextField(hintText: 'Phone'),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
              child: CustomTextField(hintText: 'Full Address'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Image.asset('assets/images/🌎 Map Maker_  (Standard).png'),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                Checkbox(
                  value: isChecked,
                  activeColor: Colors.black,
                  visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue ?? false;
                    });
                  },
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "I have read and understand the",
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return TermsOfServicesPage();
                              }));
                            },
                            child: CustomUnderlineText(textName: "Terms of")),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return TermsOfServicesPage();
                              }));
                            },
                            child: CustomUnderlineText(textName: "services")),
                        SizedBox(
                          width: 4,
                        ),
                        Text("and the"),
                        SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return PrivacyPolicyPage();
                              }));
                            },
                            child: CustomUnderlineText(
                                textName: "Privacy Policy")),
                        SizedBox(
                          width: 4,
                        ),
                        Text("by clicking of the"),
                      ],
                    ),
                    Row(
                      children: [
                        Text('"Sign up" button.'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: KPrimaryColor, fixedSize: Size(354, 45)),
                  onPressed: () {},
                  child: const Text(
                    'Log In',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
