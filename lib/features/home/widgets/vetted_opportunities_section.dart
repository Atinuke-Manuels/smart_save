import 'package:flutter/material.dart';
import 'package:smart_save/features/home/widgets/vetted_opportunities_item.dart';
import 'package:smart_save/features/invest/widgets/explore_investment.dart';

class VettedOpportunitiesSection extends StatefulWidget {
  VettedOpportunitiesSection({Key? key}) : super(key: key);

  @override
  _VettedOpportunitiesSectionState createState() =>
      _VettedOpportunitiesSectionState();
}

class _VettedOpportunitiesSectionState
    extends State<VettedOpportunitiesSection> {
  final List<Map<String, String>> opportunitiesData = [
    {
      "vettedImg": "assets/vetted_images/vetted2.jpg",
      "title": "CORPORATE DEBT",
      "subTitle": "10% returns in 1 year"
    },
    {
      "vettedImg": "assets/vetted_images/vetted3.jpg",
      "title": "LIFE CHANGING OPPORTUNITIES",
      "subTitle": "15% returns in 1 year"
    },
    {
      "vettedImg": "assets/vetted_images/vetted4.jpg",
      "title": "BEST DEALS EVER",
      "subTitle": "25% returns in 1 year"
    },
    {
      "vettedImg": "assets/vetted_images/vetted5.png",
      "title": "EXCITING CORPORATE DEALS",
      "subTitle": "5% returns in 1 year"
    },
    {
      "vettedImg": "assets/vetted_images/vetted6.png",
      "title": "WITH US TRUST IS NOT AN ISSUE",
      "subTitle": "18% returns in 1 year"
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
                "Vetted Opportunities",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
              TextButton(
                // onPressed: scrollToNextItem,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return ExploreInvestment();
                      })
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "Find More",
                      style: TextStyle(
                          color: Colors.purple.shade800,
                          fontWeight: FontWeight.w800),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.purple.shade800,
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
                  vettedImg: opportunitiesData[index]["vettedImg"]!,
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
