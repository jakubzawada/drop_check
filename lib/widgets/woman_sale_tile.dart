import 'package:drop_check/app/home/pages/detail%20pages/woman_sale_detail_page.dart';
import 'package:drop_check/models/woman_sale_model.dart';
import 'package:flutter/material.dart';

class WomanSaleTile extends StatelessWidget {
  const WomanSaleTile({super.key, required this.womanSale});
  final WomanSaleModel womanSale;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WomanSaleDetailPage(
              womanSale: womanSale,
            ),
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
                    womanSale.imagePath,
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
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '${womanSale.discountPercent}%',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      womanSale.name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2, // Ogranicz tekst do 2 linii
                      overflow: TextOverflow
                          .ellipsis, // Dodaj elipsę, jeśli tekst jest za długi
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text('${womanSale.price}zł'),
                        const SizedBox(width: 10),
                        Text(
                          '${womanSale.priceBefore}zł',
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
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
