import 'package:drop_check/models/newsfeed_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsfeedTile extends StatelessWidget {
  const NewsfeedTile({super.key, required this.newsfeed});
  final NewsfeedModel newsfeed;

  Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        launchURL(newsfeed.dropLink);
      },
      child: Container(
        width: screenWidth - 30, // Szerokość ekranu minus padding (2 * 15)
        margin: const EdgeInsets.symmetric(
            horizontal: 15, vertical: 10), // Padding 15 pikseli po bokach
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: AspectRatio(
            aspectRatio: 16 / 9, // Możesz dostosować stosunek proporcji
            child: Image.network(
              newsfeed.imagePath,
              fit: BoxFit.cover, // Dopasowanie obrazka
            ),
          ),
        ),
      ),
    );
  }
}
