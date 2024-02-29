import 'package:flutter/material.dart';

class ExploreInvestment extends StatelessWidget {
  const ExploreInvestment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore Investments"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ExploreInvestmentItem(),
          SizedBox(height: 12,),
          ExploreInvestmentItem(),
        ],
      ),
    );
  }
}

class ExploreInvestmentItem extends StatelessWidget {
  const ExploreInvestmentItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/vetted_images/vetted1.jpg",
                height: 110,
                width: 100,
              )),
          SizedBox(width: 4,),
          Expanded(
            child: Column(
              children: [
                Text(
                  "CORPORATE DEBT NOTE SERIES XXI",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  "10% returns in 9 months",
                  style:
                      TextStyle(color: Colors.deepPurple, fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("\$5,000", style: TextStyle(fontSize: 12),), Text("per unit", style: TextStyle(fontSize: 12),)],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("\$65", style: TextStyle(fontSize: 12),), Text("per unit", style: TextStyle(fontSize: 12),)],
                    ),
                  ],
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Sold Out",
              style: TextStyle(fontSize: 12, color: Colors.deepPurple),
            ),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 4),
                backgroundColor: Colors.deepPurple.shade100,

          ))
        ],
      ),
    );
  }
}
