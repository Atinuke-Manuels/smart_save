import 'package:flutter/material.dart';

class StrictSavingsItem extends StatelessWidget {
  const StrictSavingsItem({
    super.key,
    required this.buttonTitle,
    required this.buttonStyling,
    required this.mainTitle,
    required this.subtitle,
    required this.backgroundImage,
  });

  final Widget buttonTitle;
  final ButtonStyle buttonStyling;
  final Widget mainTitle;
  final Widget subtitle;
  final DecorationImage backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      // height: MediaQuery.of(context).size.height * 0.25,
      height: 240,
      margin: EdgeInsets.only(right: 8, bottom: 6, top: 6),
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), image: backgroundImage),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: ElevatedButton(
                onPressed: () {}, child: buttonTitle, style: buttonStyling),
          ),
          Positioned(top: 60, child: mainTitle),
          Positioned(
            top: 90,
            child: SizedBox(
                width: MediaQuery.of(context).size.width *
                    0.42, // Set the desired width
                child: subtitle),
          ),
        ],
      ),
    );
  }
}
