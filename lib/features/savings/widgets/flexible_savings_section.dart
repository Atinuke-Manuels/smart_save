import 'package:flutter/material.dart';
import 'package:smart_save/features/savings/widgets/strict_savings_item.dart';

class FlexibleSavingsSection extends StatelessWidget {
  const FlexibleSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flexible Savings",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black38,
            ),
          ),
          SizedBox(
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  StrictSavingsItem(
                    buttonTitle: Text(
                      "\$100",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    buttonStyling: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                      minimumSize:
                      MaterialStateProperty.all<Size>(Size(20, 32)),
                    ),
                    mainTitle: Text(
                      "Flex Dollar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 18),
                    ),
                    subtitle: Text(
                      "Save in dollar earn interests.",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),
                    ),
                    backgroundImage: DecorationImage(
                      image: AssetImage("assets/flexible_images/dollar.jpg"),
                      fit: BoxFit
                          .cover, // Adjust the fit as needed (cover, contain, etc.)
                    ),
                  ),
                  StrictSavingsItem(
                    buttonTitle: Text(
                      "\N9000",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    buttonStyling: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.orange.shade800),
                      minimumSize:
                      MaterialStateProperty.all<Size>(Size(20, 32)),
                    ),
                    mainTitle: Text(
                      "Flex Naira",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    subtitle: Text(
                      "Your emergency funds at your finger tips",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    backgroundImage: DecorationImage(
                      image: AssetImage("assets/flexible_images/naira.jpg"),
                      fit: BoxFit
                          .cover, // Adjust the fit as needed (cover, contain, etc.)
                    ),
                  ),

                ],
              )),
        ],
      ),
    );
  }
}
