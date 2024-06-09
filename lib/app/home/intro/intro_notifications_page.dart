import 'package:drop_check/app/home/home_page.dart';
import 'package:flutter/material.dart';

class IntroNotificationsPage extends StatefulWidget {
  const IntroNotificationsPage({super.key});

  @override
  State<IntroNotificationsPage> createState() => _IntroNotificationsPageState();
}

class _IntroNotificationsPageState extends State<IntroNotificationsPage> {
  bool dropIsSwitched = true;
  bool saleIsSwitched = true;
  bool otherIsSwitched = true;
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
              Divider(
                thickness: 0.5,
                color: Colors.grey[600],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Dropy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Switch.adaptive(
                        value: dropIsSwitched,
                        onChanged: (bool value) {
                          setState(() {
                            dropIsSwitched = value;
                          });
                        }),
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey[600],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Promocje',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Switch.adaptive(
                        value: saleIsSwitched,
                        onChanged: (bool value) {
                          setState(() {
                            saleIsSwitched = value;
                          });
                        }),
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey[600],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Inne',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Switch.adaptive(
                        value: otherIsSwitched,
                        onChanged: (bool value) {
                          setState(() {
                            otherIsSwitched = value;
                          });
                        }),
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey[600],
              ),
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
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Dalej',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
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

class NotificationContainer extends StatelessWidget {
  final String dropImage;
  final String dropTime;
  final String dropName;
  final String dropDescription;
  const NotificationContainer({
    required this.dropImage,
    required this.dropTime,
    required this.dropName,
    required this.dropDescription,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'lib/images/Drop3.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dropName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  dropDescription,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  dropTime,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 11,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    dropImage,
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
