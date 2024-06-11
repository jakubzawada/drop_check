import 'package:drop_check/app/home/pages/detail%20pages/other_sale_detail_page.dart';
import 'package:drop_check/models/other_sale_model.dart';
import 'package:flutter/material.dart';

class OtherSaleTile extends StatelessWidget {
  const OtherSaleTile({Key? key, required this.otherSale}) : super(key: key);
  final OtherSaleModel otherSale;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtherSaleDetailPage(
              otherSale: otherSale,
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
                    otherSale.imagePath,
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
                        '${otherSale.discountPercent}%',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      otherSale.name,
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
                        Text('${otherSale.price}zł'),
                        const SizedBox(width: 10),
                        Text(
                          '${otherSale.priceBefore}zł',
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
