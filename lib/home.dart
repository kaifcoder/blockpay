import 'package:blockpay/history.dart';
import 'package:blockpay/payment.dart';
import 'package:blockpay/profile.dart';
import 'package:blockpay/settings.dart';
import 'package:blockpay/wallet.dart';

import 'package:fluent_ui/fluent_ui.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedItemIndex = 0;
  List<NavigationPaneItem> items = [
    PaneItem(
      icon: const Icon(FluentIcons.home),
      title: const Text('Home'),
      body: PaymentsScreen(),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.money),
      title: const Text('Wallet'),
      body: WalletWidget(
        balance: 1000,
        onAddFundsPressed: () {},
      ),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.history),
      title: const Text('Transaction History'),
      body: TransactionHistoryWidget(transactions: [
        Transaction(
          title: 'Payment to John Doe',
          date: 'Jan 1, 2021',
          amount: 100.00,
        ),
        Transaction(
          title: 'Payment to John Doe',
          date: 'Jan 1, 2021',
          amount: 100.00,
        ),
        Transaction(
          title: 'Payment to John Doe',
          date: 'Jan 1, 2021',
          amount: 100.00,
        ),
        Transaction(
          title: 'Payment to John Doe',
          date: 'Jan 1, 2021',
          amount: 100.00,
        ),
        Transaction(
          title: 'Payment to John Doe',
          date: 'Jan 1, 2021',
          amount: 100.00,
        ),
        Transaction(
          title: 'Payment to John Doe',
          date: 'Jan 1, 2021',
          amount: 100.00,
        ),
      ]),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.contact),
      title: const Text('Profile'),
      body: ProfileWidget(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      pane: NavigationPane(
        selected: _selectedItemIndex,
        onChanged: (index) {
          setState(() {
            _selectedItemIndex = index;
          });
        },
        displayMode: PaneDisplayMode.auto,
        items: items,
        footerItems: [
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            title: const Text('Settings'),
            body: SettingsWidget(),
          ),
        ],
      ),
    );
  }
}
