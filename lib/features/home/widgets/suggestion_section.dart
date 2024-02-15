import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suggestions for you",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black38,
            ),
          ),
          SizedBox(height: 4,),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
            child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          'assets/images/savings_img.jpg',
                          width: MediaQuery.of(context).size.width * 0.8,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 4,
                        left: 4,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          child: Text('Start Now', style: TextStyle(fontSize: 12, color: Colors.black),),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                                horizontal: 8,
                              ),
                              backgroundColor: Colors.orange
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8,),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          'assets/images/account_img.jpg',
                          width: MediaQuery.of(context).size.width * 0.8,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 4,
                        left: 4,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          child: Text('Smart save', style: TextStyle(fontSize: 12, color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                                horizontal: 8,
                              ),
                              backgroundColor: Colors.red
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8,),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          'assets/images/invest_img.jpg',
                          width: MediaQuery.of(context).size.width * 0.8,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 4,
                        left: 4,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          child: Text('Invest here', style: TextStyle(fontSize: 12, color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                                horizontal: 8,
                              ),
                              backgroundColor: Colors.deepPurple
                          ),
                        ),
                      ),
                    ],
                  ),
                ]
            ),
          )
        ],
      ),
    );
  }
}

