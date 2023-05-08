import 'package:fluent_ui/fluent_ui.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Send Money',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          TextBox(
            placeholder: 'Recipient',
            style: const TextStyle(fontSize: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          TextBox(
            placeholder: 'Amount',
            style: const TextStyle(fontSize: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          FilledButton(
            child: const Text('Pay'),
            onPressed: () => debugPrint('pressed button'),
          )
        ],
      ),
    );
  }
}
