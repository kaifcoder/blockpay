import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart';

class WalletWidget extends StatelessWidget {
  final double balance;
  final Function onAddFundsPressed;

  WalletWidget({
    required this.balance,
    required this.onAddFundsPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wallet',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expander(
            header: Text('Open to see the scrollable text'),
            content: SizedBox(
              height: 300,
              child: SingleChildScrollView(
                child: Text('A LONG TEXT HERE'),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Balance',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$${balance.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () => onAddFundsPressed(
              context,
            ),
            child: Text('Add Funds'),
          ),
        ],
      ),
    );
  }
}
