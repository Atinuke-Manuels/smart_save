import 'package:flutter/material.dart';

import '../widgets/signup_bottom_section.dart';
import '../widgets/signup_top_section.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              children: [
                SignUpTopSection(),
                SignUpBottomSection(),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
