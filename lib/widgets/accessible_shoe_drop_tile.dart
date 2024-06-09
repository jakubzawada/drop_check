import 'package:drop_check/app/home/pages/accessible_shoe_detail_page.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:flutter/material.dart';

class AccessibleShoeDropTile extends StatelessWidget {
  AccessibleShoeDropModel accessibleShoe;
  AccessibleShoeDropTile({super.key, required this.accessibleShoe});

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
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        accessibleShoe.imagePath,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            accessibleShoe.dropTime,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          accessibleShoe.name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                        const SizedBox(height: 5),
                        Text('${accessibleShoe.price}zł'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
