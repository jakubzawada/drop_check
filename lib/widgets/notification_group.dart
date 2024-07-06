import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:drop_check/widgets/notification_settings.dart';
import 'package:drop_check/widgets/notification_switch.dart';

class NotificationGroup extends StatelessWidget {
  const NotificationGroup({super.key});

  @override
  Widget build(BuildContext context) {
    var notificationSettings = Provider.of<NotificationSettings>(context);

    return Column(
      children: [
        Divider(thickness: 0.5, color: Colors.grey[600]),
        NotificationSwitch(
          title: 'Dropy',
          value: notificationSettings.dropIsSwitched,
          onChanged: (bool value) {
            notificationSettings.toggleDrop(value);
          },
        ),
        Divider(thickness: 0.5, color: Colors.grey[600]),
        NotificationSwitch(
          title: 'Promocje Męskie',
          value: notificationSettings.manSaleIsSwitched,
          onChanged: (bool value) {
            notificationSettings.toggleManSale(value);
          },
        ),
        Divider(thickness: 0.5, color: Colors.grey[600]),
        NotificationSwitch(
          title: 'Promocje Damskie',
          value: notificationSettings.womanSaleIsSwitched,
          onChanged: (bool value) {
            notificationSettings.toggleWomanSale(value);
          },
        ),
        Divider(thickness: 0.5, color: Colors.grey[600]),
        NotificationSwitch(
          title: 'Inne',
          value: notificationSettings.otherIsSwitched,
          onChanged: (bool value) {
            notificationSettings.toggleOther(value);
          },
        ),
        Divider(thickness: 0.5, color: Colors.grey[600]),
      ],
    );
  }
}
