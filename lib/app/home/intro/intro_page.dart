import 'package:drop_check/app/home/intro/intro_notifications_page.dart';
import 'package:drop_check/widgets/next_button_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              Text(
                AppLocalizations.of(context).dropsAndPromotions,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                AppLocalizations.of(context).discoverTheLatestSneakerDrops,
                style: const TextStyle(
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
