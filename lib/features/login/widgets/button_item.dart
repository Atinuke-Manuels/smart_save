import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  const ButtonItem({
    super.key,
    required this.title,
    required this.onPress,
    required this.buttonWidth,
    this.arrowIcon,
  });
  final String title;
  final Function () onPress;
  final double buttonWidth;
  final Icon? arrowIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: buttonWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title, style: TextStyle(color: Colors.orange, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(width: 30),
            if (arrowIcon != null) arrowIcon!,
          ],
        ),
      ),
    );
  }
}
