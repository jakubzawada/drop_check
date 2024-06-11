import 'package:flutter/material.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:url_launcher/url_launcher.dart';

class AccessibleShoeDetailPage extends StatelessWidget {
  final AccessibleShoeDropModel accessibleShoe;

  const AccessibleShoeDetailPage({super.key, required this.accessibleShoe});

  Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(accessibleShoe.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(accessibleShoe.imagePath),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              accessibleShoe.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              '${accessibleShoe.price}zł',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              accessibleShoe.description,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Drop Time: ${accessibleShoe.dropTime}',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    launchURL(accessibleShoe.dropLink);
                  },
                  child: Container(
                    width: 160,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Kup teraz',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
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
