import 'package:drop_check/app/core/enums.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:drop_check/models/man_sale_cart_model.dart';
import 'package:drop_check/models/woman_sale_cart_model.dart';
import 'package:drop_check/models/other_sale_cart_model.dart';
import 'package:drop_check/widgets/tile/man_sale_tile.dart';
import 'package:drop_check/widgets/tile/woman_sale_tile.dart';
import 'package:drop_check/widgets/tile/other_sale_tile.dart';
import 'package:drop_check/models/man_sale_model.dart';
import 'package:drop_check/models/woman_sale_model.dart';
import 'package:drop_check/models/other_sale_model.dart';

class SaleList extends StatelessWidget {
  final SaleCategory selectedCategory;

  const SaleList({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
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
      default:
        return Container();
    }
  }
}
