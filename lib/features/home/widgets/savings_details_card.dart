import 'package:flutter/material.dart';

class SavingsDetailsCard extends StatelessWidget {
  const SavingsDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.all(16.0),
      // To make the height more adaptive to various screen sizes.
      height: MediaQuery.of(context).size.height * 0.19,
      child: Stack(
        children: [
          ElevatedButton.icon(
            onPressed: (){},
            icon: Icon(Icons.add),
            label: Text("Quick save"),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 8
                ),
                backgroundColor: Colors.deepOrangeAccent,
                foregroundColor: Colors.deepPurple
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              child:
              ElevatedButton(
                onPressed: (){},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("View savings",),
                    Icon(Icons.arrow_forward)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 8
                    )
                ),
              )
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: Column(
                children: [
                  Text("My savings", style: TextStyle(color: Colors.white),),
                  Text("******", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),)
                ],
              )
          )
        ],
      ),
    );
  }
}