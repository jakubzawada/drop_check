import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/models/man_sale_cart_model.dart';
import 'package:drop_check/models/man_sale_model.dart';
import 'package:drop_check/models/other_sale_cart_model.dart';
import 'package:drop_check/models/other_sale_model.dart';
import 'package:drop_check/models/woman_sale_cart_model.dart';
import 'package:drop_check/models/woman_sale_model.dart';
import 'package:drop_check/widgets/man_sale_tile.dart';
import 'package:drop_check/widgets/other_sale_tile.dart';
import 'package:drop_check/widgets/woman_sale_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SalePage extends StatefulWidget {
  const SalePage({super.key});

  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  bool showWomanSale = false;
  SaleCategory selectedCategory = SaleCategory.men;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Promocje',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = SaleCategory.men;
                  });
                },
                child: Container(
                  width: 110,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: selectedCategory == SaleCategory.men
                        ? Colors.deepPurple
                        : Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Mężczyzna',
                    style: TextStyle(
                      color: selectedCategory == SaleCategory.men
                          ? Colors.white
                          : Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = SaleCategory.women;
                  });
                },
                child: Container(
                  width: 110,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: selectedCategory == SaleCategory.women
                        ? Colors.deepPurple
                        : Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Kobieta',
                    style: TextStyle(
                      color: selectedCategory == SaleCategory.women
                          ? Colors.white
                          : Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = SaleCategory.other;
                  });
                },
                child: Container(
                  width: 110,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: selectedCategory == SaleCategory.other
                        ? Colors.deepPurple
                        : Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Inne',
                    style: TextStyle(
                      color: selectedCategory == SaleCategory.other
                          ? Colors.white
                          : Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: _buildSaleContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildSaleContent() {
    switch (selectedCategory) {
      case SaleCategory.men:
        return Consumer<ManSaleCart>(
          builder: (context, manCart, child) {
            return ListView.builder(
              itemCount: manCart.getManSaleList().length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                ManSaleModel manSale = manCart.getManSaleList()[index];
                return ManSaleTile(
                  manSale: manSale,
                );
              },
            );
          },
        );
      case SaleCategory.women:
        return Consumer<WomanSaleCart>(
          builder: (context, womanCart, child) {
            return ListView.builder(
              itemCount: womanCart.getWomanSaleList().length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                WomanSaleModel womanSale = womanCart.getWomanSaleList()[index];
                return WomanSaleTile(
                  womanSale: womanSale,
                );
              },
            );
          },
        );
      case SaleCategory.other:
        return Consumer<OtherSaleCart>(
          builder: (context, otherCart, child) {
            return ListView.builder(
              itemCount: otherCart.getOtherSaleList().length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                OtherSaleModel otherSale = otherCart.getOtherSaleList()[index];
                return OtherSaleTile(
                  otherSale: otherSale,
                );
              },
            );
          },
        );
    }
  }
}
