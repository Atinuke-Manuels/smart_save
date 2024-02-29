import 'package:flutter/material.dart';
import 'package:smart_save/features/home/widgets/savings_details_card.dart';

import '../../invest/widgets/invest_view_card.dart';

class HomeSwipeEffect extends StatefulWidget {
  const HomeSwipeEffect({
    super.key,
  });

  @override
  State<HomeSwipeEffect> createState() => _HomeSwipeEffectState();
}

class _HomeSwipeEffectState extends State<HomeSwipeEffect> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(
        builder: (context) {
          return Column(
            children: [
              SizedBox(
                height: 150,
                child: PageView(
                  onPageChanged: (index){
                    setState(() {
                      DefaultTabController.of(context).index = index;
                    });
                  },
                  pageSnapping: true,
                  children: [
                    SavingsDetailsCard(
                      bottomLeftWidget: Text(
                        "My savings",
                        style: TextStyle(color: Colors.grey.shade200),
                      ),
                      balance: Text(
                        '\$20000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      topRightWidget: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "View savings",
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.deepOrangeAccent,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: InvestDetailsCard(),
                    ),
                  ],
                ),
              ),
              TabPageSelector(color: Colors.white, selectedColor: Colors.purpleAccent,)
            ],
          );
        }
      ),
    );
  }
}
