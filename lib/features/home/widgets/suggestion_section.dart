import 'package:flutter/material.dart';
import 'package:smart_save/features/home/widgets/suggestion_item.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({
    Key? key,
  }) : super(key: key);

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
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4, // Adjust the count based on your actual data
              itemBuilder: (context, index) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                  child: SuggestionsList(
                    picture: Image.asset(
                      index == 0
                          ? 'assets/images/savings_img.jpg'
                          : index == 1
                          ? 'assets/images/account_img.jpg'
                          : index == 2
                          ? 'assets/images/children_acct.jpg'
                          : 'assets/images/invest_img.jpg',
                      width: MediaQuery.of(context).size.width * 0.8,
                      fit: BoxFit.cover,
                    ),
                    onPress: () {},
                    buttonText: index == 0
                        ? "Start Now"
                        : index == 1
                        ? "Smart Save"
                        : index == 2
                        ? "Children Account"
                        : "Invest Here",
                    buttonTextStyle: TextStyle(
                      fontSize: 12,
                      color: index == 1 ? Colors.white : index == 2 ? Colors.red : Colors.black,
                    ),
                    buttonStyle: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 8,
                      ),
                      backgroundColor: index == 0
                          ? Colors.orange
                          : index == 1
                          ? Colors.red.shade500
                          : index == 2
                          ? Colors.yellowAccent
                          : Colors.deepPurple,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

