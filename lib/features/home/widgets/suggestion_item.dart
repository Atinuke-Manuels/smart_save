import 'package:flutter/material.dart';

class SuggestionsList extends StatelessWidget {
  const SuggestionsList({
    Key? key,
    required this.picture,
    this.onPress,
    required this.buttonText,
    this.buttonTextStyle,
    this.buttonStyle,
  }) : super(key: key);

  final Image picture;
  final Function()? onPress;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: picture,
            ),
            Positioned(
              bottom: 4,
              left: 4,
              child: ElevatedButton(
                onPressed: onPress,
                child: Text(buttonText, style: buttonTextStyle),
                style: buttonStyle,
              ),
            ),
          ],
        ),
        SizedBox(width: 8),
      ],
    );
  }
}
