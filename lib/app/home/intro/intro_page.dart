import 'package:drop_check/app/home/intro/intro_notifications_page.dart';
import 'package:drop_check/widgets/next_button_container.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/images/DCLogo3.png',
                height: 240,
              ),
              const Text(
                'Dropy i promocje!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Odkryj najnowsze dropy sneakersów i korzystaj z największych promocji na lifestyle i streetwear!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 148),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 18,
                  ),
                  Icon(
                    Icons.circle_outlined,
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              NextButtonContainer(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IntroNotificationsPage(),
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
