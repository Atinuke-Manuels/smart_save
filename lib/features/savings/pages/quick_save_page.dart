import 'package:flutter/material.dart';

class QuickSavePage extends StatelessWidget {
  const QuickSavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Image.asset("assets/logo.png", height: 60, width: 60, alignment: Alignment.centerLeft,),
          SizedBox(height: 24,),
          Row(
            children: [
              Text("Quick Save", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Image.asset("assets/images/bolt.png", height: 20, width: 20,)
            ],),
          Divider(),
          Text("Enter an amount", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,),),
          TextField(
            decoration: InputDecoration(
              hintText: " 5,000",
              border: OutlineInputBorder(
                borderSide: BorderSide.none
              ),
              prefix: Text('\$'),
              fillColor: Colors.grey,
            ),
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Quick Save"))
        ],
      ),
    );
  }
}
