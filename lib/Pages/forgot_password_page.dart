import 'package:bulkify/Pages/Verification_page.dart';
import 'package:bulkify/constants.dart';
import 'package:bulkify/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          "Forgot Password",
          style: TextStyle(
              color: Color(0xFF61ae45),
              fontSize: 27,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextField(hintText: 'Enter your email', height: 52),
          Padding(
            padding: const EdgeInsets.all(6),
            child: RichText(
              textAlign: TextAlign.center, // Aligns the text to the center
              text: TextSpan(
                text: 'We will send you verification number\n', // First line
                style: TextStyle(
                    color: Color(0xFF9f9f9f),
                    fontSize: 13,
                    fontWeight: FontWeight.bold), // Common style
                children: [
                  TextSpan(
                    text: 'to your Email', // Second line
                    style: TextStyle(
                        color: Color(0xFF9f9f9f),
                        fontSize: 13,
                        fontWeight:
                            FontWeight.bold), // Style for the second line
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 20,
              right: 20,
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: KPrimaryColor, fixedSize: Size(354, 45)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return VerificationPage();
                  }));
                },
                child: const Text(
                  'Recover Password',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
