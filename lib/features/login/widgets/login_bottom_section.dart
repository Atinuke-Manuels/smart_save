import 'package:flutter/material.dart';

import 'button_item.dart';

class LoginBottomSection extends StatelessWidget {
  const LoginBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ButtonItem(
              title: "LOG IN",
              onPress: () {
                Navigator.pushNamed(context, '/HomePage');
              },
              buttonWidth: MediaQuery.of(context).size.width * 0.95),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 2,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text("Or Continue With", style: TextStyle(color: Colors.grey.shade600, fontSize: 16),),
                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    height: 2,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/google.png",), height: 60, width: 60,),
                Image(image: AssetImage("assets/images/facebook.jpg"), height: 60, width: 60,)
              ],
            ),
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("New User? ", style: TextStyle(color: Colors.grey.shade600, fontSize: 16),),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/SignUpPage');
                  },
                  child: Text("Create Account", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),))
            ],
          )
        ],
      ),
    );
  }
}


