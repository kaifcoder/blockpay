import 'package:fluent_ui/fluent_ui.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'John Doe',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'johndoe@example.com',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(FluentIcons.map_pin),
              SizedBox(width: 8.0),
              Text(
                'New York, NY',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          FilledButton(
            onPressed: () {},
            child: const Text('Edit Profile'),
          ),
          const SizedBox(height: 16.0),
          Column(
            children: [
              Button(
                onPressed: () => showContentDialog(context),
                child: const Text('Logout'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void showContentDialog(BuildContext context) async {
    final result = await showDialog<String>(
      context: context,
      builder: (context) => ContentDialog(
        title: const Text('Are you sure you want to logout?'),
        actions: [
          Button(
            child: const Text('Logout'),
            onPressed: () {
              Navigator.pop(context, 'User deleted file');
              // Delete file here
            },
          ),
          FilledButton(
            child: const Text('Cancel'),
            onPressed: () => Navigator.pop(context, 'User canceled dialog'),
          ),
        ],
      ),
    );
  }
}
