import 'package:bulkify/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class NewPasswordPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff6a7f64), shape: BoxShape.circle),
              child: IconButton(
                  highlightColor: Color(0xFF61ae45),
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  })),
        ),
        title: Text(
          "New Password",
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
          Padding(
            padding:
                const EdgeInsets.only(top: 45, left: 20, right: 20, bottom: 5),
            child: CustomTextField(hintText: 'Enter a new password'),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 15),
            child: CustomTextField(hintText: 'Confirm new password'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF61ae45),
                    fixedSize: Size(354, 45)),
                onPressed: () {},
                child: const Text(
                  'Log In',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
