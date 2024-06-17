import 'package:drop_check/app/home/pages/detail%20pages/best_sale_detail_page.dart';
import 'package:drop_check/models/best_sale_model.dart';
import 'package:flutter/material.dart';

class BestSaleTile extends StatelessWidget {
  const BestSaleTile({super.key, required this.bestSale});
  final BestSaleModel bestSale;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BestSaleDetailPage(
              bestSale: bestSale,
            ),
          ),
        );
      },
      child: SizedBox(
        width: 300,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      bestSale.imagePath,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 2),
                      Text(
                        bestSale.name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Text(
                            '${bestSale.price}zł',
                            style: const TextStyle(fontSize: 15),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '${bestSale.priceBefore}zł',
                            style: const TextStyle(
                              fontSize: 15,
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
      ),
    );
  }
}
