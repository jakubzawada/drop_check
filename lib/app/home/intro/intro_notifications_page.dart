import 'package:drop_check/app/home/home_page.dart';
import 'package:drop_check/widgets/next_button_container.dart';
import 'package:drop_check/widgets/notification_container.dart';
import 'package:drop_check/widgets/notification_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IntroNotificationsPage extends StatelessWidget {
  const IntroNotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context).setNotifications,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              NotificationContainer(
                dropImage: 'lib/images/jordanUNC.jpg',
                dropTime: AppLocalizations.of(context).thirtyFiveMinutesAgo,
                dropName: 'Jordan 1 Retro High OG UNC Toe',
                dropDescription: AppLocalizations.of(context).dropAtNine,
              ),
              const SizedBox(height: 20),
              NotificationContainer(
                dropImage: 'lib/images/jordanTravis.webp',
                dropTime: AppLocalizations.of(context).oneHourAgo,
                dropName: 'Air Jordan 1 Retro High Travis Scott',
                dropDescription:
                    AppLocalizations.of(context).dropAtTwelveThirty,
              ),
              const SizedBox(height: 24),
              Text(
                AppLocalizations.of(context)
                    .selectTheTypesOfNotificationsYouWantToReceive,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const NotificationGroup(),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle_outlined,
                    size: 18,
                  ),
                  Icon(
                    Icons.circle,
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              NextButtonContainer(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
