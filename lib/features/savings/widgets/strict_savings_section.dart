import 'package:flutter/material.dart';
import 'package:smart_save/features/savings/widgets/strict_savings_item.dart';

class StrictSavingsSection extends StatelessWidget {
  const StrictSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Strict Savings",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black38,
            ),
          ),
          SizedBox(
              // height: MediaQuery.of(context).size.height * 0.6,
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  StrictSavingsItem(
                    buttonTitle: Text(
                      "SET UP",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    buttonStyling: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.deepPurple),
                      minimumSize:
                      MaterialStateProperty.all<Size>(Size(20, 32)),
                    ),
                    mainTitle: Text(
                      "PiggyBank",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent,
                          fontSize: 18),
                    ),
                    subtitle: Text(
                      "This is a new variant of our savings app",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    backgroundImage: DecorationImage(
                      image: AssetImage("assets/strict_images/strict1.jpg"),
                      fit: BoxFit
                          .cover, // Adjust the fit as needed (cover, contain, etc.)
                    ),
                  ),
                  StrictSavingsItem(
                    buttonTitle: Text(
                      "LOCK MONEY",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    buttonStyling: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.orange.shade800),
                      minimumSize:
                      MaterialStateProperty.all<Size>(Size(20, 32)),
                    ),
                    mainTitle: Text(
                      "Safelock",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange.shade800,
                          fontSize: 18),
                    ),
                    subtitle: Text(
                      "Lock funds to avoid temptations",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    backgroundImage: DecorationImage(
                      image: AssetImage("assets/strict_images/strict3.jpg"),
                      fit: BoxFit
                          .cover, // Adjust the fit as needed (cover, contain, etc.)
                    ),
                  ),
                  StrictSavingsItem(
                    buttonTitle: Text(
                      "NEW GOAL",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    buttonStyling: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                      minimumSize:
                      MaterialStateProperty.all<Size>(Size(20, 32)),
                    ),
                    mainTitle: Text(
                      "TargetSavings",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade800,
                          fontSize: 18),
                    ),
                    subtitle: Text(
                      "Smash your savings goals faster",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    backgroundImage: DecorationImage(
                      image: AssetImage("assets/strict_images/strict2.jpg"),
                      fit: BoxFit
                          .cover, // Adjust the fit as needed (cover, contain, etc.)
                    ),
                  ),
                  StrictSavingsItem(
                    buttonTitle: Text(
                      "ADD MONEY",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    buttonStyling: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red),
                      minimumSize:
                      MaterialStateProperty.all<Size>(Size(20, 32)),
                    ),
                    mainTitle: Text(
                      "HouseMoney",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red.shade800,
                          fontSize: 18),
                    ),
                    subtitle: Text(
                      "Save for your housing",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    backgroundImage: DecorationImage(
                      image: AssetImage("assets/strict_images/strict4.jpg"),
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
