import 'package:drop_check/app/home/pages/detail%20pages/shoe_detail_page.dart';
import 'package:drop_check/models/shoe_drop_model.dart';
import 'package:flutter/material.dart';

class ShoeDropTile extends StatelessWidget {
  const ShoeDropTile({super.key, required this.shoe});
  final ShoeDropModel shoe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShoeDetailPage(shoe: shoe),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    shoe.imagePath,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
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
                        shoe.dropTime,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      shoe.name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2, // Ogranicz tekst do 2 linii
                      overflow: TextOverflow
                          .ellipsis, // Dodaj elipsę, jeśli tekst jest za długi
                    ),
                    const SizedBox(height: 5),
                    Text('${shoe.price}zł'),
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
