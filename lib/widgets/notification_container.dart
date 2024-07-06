import 'package:flutter/material.dart';

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
