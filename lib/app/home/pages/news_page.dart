import 'package:drop_check/models/best_sale_cart_model.dart';
import 'package:drop_check/models/best_sale_model.dart';
import 'package:drop_check/models/newsfeed_cart_model.dart';
import 'package:drop_check/widgets/best_sale_tile.dart';
import 'package:drop_check/widgets/newsfeed_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Okazje',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 180,
              child: Consumer<BestSaleCart>(
                builder: (context, bestSaleCart, child) {
                  return ListView.builder(
                    itemCount: bestSaleCart.getBestSaleList().length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      BestSaleModel bestSale =
                          bestSaleCart.getBestSaleList()[index];
                      return BestSaleTile(
                        bestSale: bestSale,
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aktualności',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Consumer<NewsfeedCart>(
              builder: (context, newsfeedCart, child) {
                return Column(
                  children: newsfeedCart.getNewsfeedList().map((newsfeed) {
                    return NewsfeedTile(
                      newsfeed: newsfeed,
                    );
                  }).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
