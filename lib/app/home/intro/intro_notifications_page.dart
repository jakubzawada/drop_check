import 'package:drop_check/app/home/home_page.dart';
import 'package:drop_check/widgets/next_button_container.dart';
import 'package:drop_check/widgets/notification_container.dart';
import 'package:drop_check/widgets/notification_group.dart';
import 'package:flutter/material.dart';

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
              const Text(
                'Ustaw Powiadomienia!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              const NotificationContainer(
                dropImage: 'lib/images/jordanUNC.jpg',
                dropTime: '35m temu',
                dropName: 'Jordan 1 Retro High OG UNC Toe',
                dropDescription: 'Drop o godzinie 9:00!',
              ),
              const SizedBox(height: 20),
              const NotificationContainer(
                dropImage: 'lib/images/jordanTravis.webp',
                dropTime: '1h temu',
                dropName: 'Air Jordan 1 Retro High Travis Scott',
                dropDescription: 'Drop o godzinie 12:30!',
              ),
              const SizedBox(height: 24),
              const Text(
                'Wybierz rodzaje powiadomień, które chcesz otrzymywać.',
                style: TextStyle(
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
