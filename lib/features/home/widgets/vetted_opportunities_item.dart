import 'package:flutter/material.dart';

class VettedOpportunitiesItem extends StatelessWidget {
  const VettedOpportunitiesItem({
    super.key,
    required this.vettedImg,
    required this.title,
    this.titleStyle,
    required this.subTitle,
    this.subTitleStyle,
  });

  final String vettedImg;
  final String title;
  final TextStyle? titleStyle;
  final String subTitle;
  final TextStyle? subTitleStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      width: MediaQuery.of(context).size.width * 0.42,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            // Set your desired border radius
            child: Image.asset(
              vettedImg,
              width: MediaQuery.of(context).size.width * 0.42,
              // height: MediaQuery.of(context).size.height * 0.22,
              height: 160,
              alignment: Alignment.topLeft,
              fit: BoxFit.cover, // Optional: Adjust the fit as per your design
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: titleStyle,
          ),
          Text(
            subTitle,
            style: subTitleStyle,
          )
        ],
      ),
    );
  }
}
