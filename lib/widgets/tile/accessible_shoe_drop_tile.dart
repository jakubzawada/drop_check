import 'package:drop_check/app/home/pages/detail%20pages/accessible_shoe_detail_page.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:flutter/material.dart';

class AccessibleShoeDropTile extends StatelessWidget {
  const AccessibleShoeDropTile({super.key, required this.accessibleShoe});
  final AccessibleShoeDropModel accessibleShoe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                AccessibleShoeDetailPage(accessibleShoe: accessibleShoe),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    accessibleShoe.imagePath,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      accessibleShoe.name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text('${accessibleShoe.price}zł'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
