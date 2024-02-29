import 'package:flutter/material.dart';
import 'package:smart_save/features/savings/widgets/choose_a_wallet_section.dart';

class QuickSavePage extends StatefulWidget {
  const QuickSavePage({super.key});

  @override
  State<QuickSavePage> createState() => _QuickSavePageState();
}



class _QuickSavePageState extends State<QuickSavePage> {
  String amount = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Image.asset(
            "assets/logo.png",
            height: 60,
            width: 60,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Text(
                "Quick Save",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/bolt.png",
                height: 20,
                width: 20,
              )
            ],
          ),
          Divider(),
          Text(
            "Enter an amount",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            onChanged: (value){
              setState(() {
                amount = value;
              });
            },
            decoration: InputDecoration(
              hintText: "\$ 5,000",
              hintStyle: TextStyle(color: Colors.grey.shade400),
              border: OutlineInputBorder(borderSide: BorderSide.none),
              // prefixText: '\$',
              fillColor: Colors.grey,
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
          ),
          amount.isEmpty ? SizedBox() : ChooseAWalletSection(),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.orange),
              child: Text("Quick Save"))
        ],
      ),
    );
  }
}
