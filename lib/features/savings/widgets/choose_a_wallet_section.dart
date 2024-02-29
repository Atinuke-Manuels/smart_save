import 'package:flutter/material.dart';
import 'package:smart_save/features/savings/widgets/wallet_item.dart';

class ChooseAWalletSection extends StatelessWidget {
  const ChooseAWalletSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Choose a wallet to top up",
              style: TextStyle(color: Colors.grey, fontSize: 16)),
          Wrap(
            children: [
              WalletItem(
                title: "PiggyBank",
                subTitle: "\$ 6000",
              ),
              WalletItem(
                title: "PiggyVest",
                subTitle: "\$ 2000",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
