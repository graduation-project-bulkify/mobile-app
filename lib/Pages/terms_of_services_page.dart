import 'package:flutter/material.dart';

class TermsOfServicesPage extends StatelessWidget {
  const TermsOfServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 55),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Terms Of Services",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SectionTitle("General"),
                      SectionContent(
                          "Access to this Website (eg.defactofashion.com), the use of this Website and products and services accessed through this Website are subject to the following terms, conditions and notices. You are assumed to have accepted all Service Conditions, which may be revised by us from time to time, by using the services. We would like to recommend you to check this page regularly in order to be informed about any revisions that may have been made in the Service Conditions. Access to the Website has been provided temporarily and we reserve the right to withdraw and modify the services without prior notice. The inability to access the Website at any time and for any reasons, regardless of how long, is not under our responsibility. We may restrict access to certain or all parts of the Website from time to time. bulkify shall be entitled to correct, remove or revise the Services and/or any pages of this Website, solely at its own discretion, at any time and without prior notice."),
                      SectionTitle("Confidentiality Policy"),
                      SectionContent(
                          "You may find our confidentiality policy explaining how we will use your data in our Confidentiality Policy section. By using this Website, you are deemed to have approved the transactions made here and the accuracy of the data you have provided."),
                      SectionTitle("Website"),
                      SectionContent(
                          "We shall not be held liable for any damages or losses caused by denial of service attacks, viruses or other technologically malicious materials that may contaminate your computer hardware, computer programs, data and your other materials due to your use of the Website or downloading any materials on this Website or any other sites, links to which are provided on this Website."),
                      SectionTitle(
                          "Intellectual Property, Software and Content"),
                      SectionContent(
                          "The Intellectual Property Rights of all software and contents offered to you on or through the Website shall remain as bulkify property and are protected by copyright laws and treaties worldwide. bulkify keeps all such rights reserved. You may only store, print and view the contents provided for your personal use. You may not publish, process, distribute any contents that are offered to you or viewed on this Website or the copies of such contents, or reproduce such in any way and in any format, or use any such contents in relation with any business or commercial establishment"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;
  SectionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SectionContent extends StatelessWidget {
  final String text;
  SectionContent(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        text,
        style: TextStyle(fontSize: 14, color: Colors.black87),
      ),
    );
  }
}
