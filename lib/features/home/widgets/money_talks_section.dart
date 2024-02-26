import 'package:flutter/material.dart';
import 'package:smart_save/features/home/widgets/vetted_opportunities_item.dart';

class MoneyTalksSection  extends StatefulWidget {
  MoneyTalksSection ({Key? key}) : super(key: key);

  @override
  _MoneyTalksSectionState createState() =>
      _MoneyTalksSectionState();
}

class _MoneyTalksSectionState
    extends State<MoneyTalksSection > {
  final List<Map<String, String>> opportunitiesData = [
    {
      "moneyImg": "assets/money_talks_images/money10.jpg",
      "title": "Meet Muyiwa",
      "subTitle": "He is still trying to figure out what to do"
    },
    {
      "moneyImg": "assets/money_talks_images/money11.jpg",
      "title": "My money mistakes",
      "subTitle": "Invest now before you spend it all"
    },
    {
      "moneyImg": "assets/money_talks_images/money12.jpg",
      "title": "This is the deal",
      "subTitle": "The real deal of the year is finally here"
    },
    {
      "moneyImg": "assets/money_talks_images/money13.jpg",
      "title": "We asked",
      "subTitle": "Your response was well received"
    },
    {
      "moneyImg": "assets/money_talks_images/money14.jpg",
      "title": "WITH US TRUST IS NOT AN ISSUE",
      "subTitle": "18% returns in 1 year"
    },
    {
      "moneyImg": "assets/money_talks_images/money15.jpg",
      "title": "Life changing opportunities",
      "subTitle": "15% returns in 1 year"
    },
  ];

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  void scrollToNextItem() {
    _scrollController.animateTo(
      _scrollController.position.pixels +
          MediaQuery.of(context).size.width * 0.42,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Money Talks",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
              TextButton(
                onPressed: scrollToNextItem,
                child: Row(
                  children: [
                    Text(
                      "View Blog",
                      style: TextStyle(
                          color: Colors.deepOrange.shade800,
                          fontWeight: FontWeight.w800),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.deepOrange.shade800,
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            // height: MediaQuery.of(context).size.height * 0.34,
            height: 240,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: opportunitiesData.length,
              itemBuilder: (BuildContext context, int index) {
                return VettedOpportunitiesItem(
                  vettedImg: opportunitiesData[index]["moneyImg"]!,
                  title: opportunitiesData[index]["title"]!,
                  titleStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis),
                  subTitle: opportunitiesData[index]["subTitle"]!,
                  subTitleStyle: TextStyle(
                      color: Colors.black54, overflow: TextOverflow.ellipsis),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}