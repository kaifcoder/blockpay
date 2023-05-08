import 'package:fluent_ui/fluent_ui.dart';

class Transaction {
  final String title;
  final String date;
  final double amount;

  Transaction({
    required this.title,
    required this.date,
    required this.amount,
  });
}

class TransactionHistoryWidget extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionHistoryWidget({required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Transaction History',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          ListView.builder(
            shrinkWrap: true,
            itemCount: transactions.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(transactions[index].title),
                subtitle: Text(transactions[index].date),
                trailing: Text(
                  '\$${transactions[index].amount.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
