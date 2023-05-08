import 'package:fluent_ui/fluent_ui.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  int? selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Settings',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Theme',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Column(
            children: List.generate(3, (index) {
              return Column(
                children: [
                  RadioButton(
                      content: Row(
                        children: [
                          const SizedBox(width: 4.0),
                          Text(
                            index == 0
                                ? 'System'
                                : index == 1
                                    ? 'Dark'
                                    : 'Light',
                          ),
                        ],
                      ),
                      checked: selected == index,
                      onChanged: (checked) {
                        if (checked) {
                          setState(() => selected = index);
                        }
                      }),
                  const SizedBox(height: 8.0),
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
