import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:drop_check/models/accessible_shoe_cart_model.dart';
import 'package:drop_check/models/shoe_cart_model.dart';
import 'package:drop_check/widgets/tile/accessible_shoe_drop_tile.dart';
import 'package:drop_check/widgets/tile/shoe_drop_tile.dart';

class ShoeList extends StatelessWidget {
  final bool showAccessible;

  const ShoeList({super.key, required this.showAccessible});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: showAccessible
          ? Consumer<AccessibleShoeCart>(
              builder: (context, accessibleCart, child) {
                return ListView.builder(
                  itemCount: accessibleCart.getAccessibleShoeList().length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    var accessibleShoe =
                        accessibleCart.getAccessibleShoeList()[index];
                    return AccessibleShoeDropTile(
                      accessibleShoe: accessibleShoe,
                    );
                  },
                );
              },
            )
          : Consumer<ShoeCart>(
              builder: (context, cart, child) {
                return ListView.builder(
                  itemCount: cart.getShoeList().length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    var shoe = cart.getShoeList()[index];
                    return ShoeDropTile(
                      shoe: shoe,
                    );
                  },
                );
              },
            ),
    );
  }
}
