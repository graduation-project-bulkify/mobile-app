import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

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
                      "Privacy Policy",
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
                      SectionTitle("Return Policy"),
                      SectionContent("Return Policy"),
                      SectionContent("When You Can Return an Item"),
                      SectionContent("You can return an item if:"),
                      SectionContent("It is damaged or broken."),
                      SectionContent("It is not what you ordered."),
                      SectionContent(
                          "You request a return within [e.g., 7 days] of receiving the item."),
                      SectionContent(
                          "Note: The item must be in the same condition you received it and in its original packaging."),
                      SectionContent("Items You Cannot Return"),
                      SectionContent("We cannot accept returns for:"),
                      SectionContent("Food or other items that spoil."),
                      SectionContent(
                          "Items marked as “final sale” or “no returns.”"),
                      SectionTitle("Refunds"),
                      SectionContent("You can get a refund if:"),
                      SectionContent(
                          "The item you return follows our return rules."),
                      SectionContent(
                          "We inspect the item and confirm the problem."),
                      SectionContent(
                          "Refunds will be sent back to your original payment method within [e.g., 20 days]."),
                      SectionContent("How to Return an Item"),
                      SectionContent(
                          "1.Contact us at [email/phone] within [e.g., 7 days] of getting the item."),
                      SectionContent(
                          "2.Share proof of the problem (e.g., a photo)."),
                      SectionTitle("Our Role"),
                      SectionContent("We will:"),
                      SectionContent("Help you with the return process."),
                      SectionContent(
                          "Work with the supplier to fix any issues."),
                      SectionTitle("Supplier Policy"),
                      SectionTitle("Supplier Responsibilities"),
                      SectionContent("Suppliers must:"),
                      SectionContent(
                          "Provide items as described in the agreement."),
                      SectionContent(
                          "Deliver items on time to the agreed location."),
                      SectionContent(
                          "Ensure items are of good quality and free from defects."),
                      SectionContent(
                          "Communicate any issues or delays as soon as possible."),
                      SectionTitle("Quality Standards"),
                      SectionContent(
                          "All products must meet the agreed quality and description."),
                      SectionContent(
                          "Damaged or defective items must be refunded."),
                      SectionContent(
                          "If items do not meet quality standards, the supplier is responsible for fixing the issue."),
                      SectionTitle("Delivery Terms"),
                      SectionContent(
                          "Items must be delivered by [specific date]"),
                      SectionContent(
                          "If there are delays, the supplier must inform the organizer immediately."),
                      SectionContent(
                          "Late delivery penalties may apply (if agreed)."),
                      SectionTitle("Payment Terms"),
                      SectionContent(
                          "Payment will be made after the items are received and inspected."),
                      SectionContent(
                          "If the items are defective or not as agreed, payment may be delayed or reduced."),
                      SectionTitle("Return and Refunds"),
                      SectionContent(
                          "Suppliers must accept returns for defective or incorrect items."),
                      SectionContent(
                          "Suppliers must process refunds within [10 Days]."),
                      SectionContent(
                          "Suppliers will cover costs for returns if the problem is their fault."),
                      SectionTitle("Termination"),
                      SectionContent(
                          "If the supplier does not follow this policy, the agreement may be ended."),
                      SectionContent(
                          "Repeated issues like poor quality or delays may lead to removal from future purchases."),
                      SectionTitle("Adding Products for Approval"),
                      SectionContent(
                          "When a supplier adds a product, they must wait for approval from customers."),
                      SectionContent("The approval process takes up to 7 days"),
                      SectionContent(
                          "Only approved products can be listed for purchase."),
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
      padding: EdgeInsets.only(top: 3),
      child: Text(
        text,
        style: TextStyle(fontSize: 14, color: Colors.black87),
      ),
    );
  }
}
