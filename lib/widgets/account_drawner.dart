import 'package:drop_check/widgets/notification_group.dart';
import 'package:drop_check/widgets/notification_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountDrawner extends StatelessWidget {
  const AccountDrawner({
    super.key,
    required this.notificationSettings,
  });

  final NotificationSettings notificationSettings;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              const Icon(
                Icons.person,
                size: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context).notifications,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const NotificationGroup(),
              const SizedBox(height: 20),
              const Spacer(),
              ListTile(
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, 'intro_page', (route) => false),
                leading: Icon(
                  Icons.logout,
                  color: Colors.grey[800],
                ),
                title: Text(
                  AppLocalizations.of(context).leave,
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
