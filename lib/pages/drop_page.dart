import 'package:drop_check/models/accessible_shoe_cart_model.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:drop_check/models/shoe_cart_model.dart';
import 'package:drop_check/models/shoe_drop_model.dart';
import 'package:drop_check/widgets/accessible_shoe_drop_tile.dart';
import 'package:drop_check/widgets/shoe_drop_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DropPage extends StatefulWidget {
  const DropPage({super.key});

  @override
  State<DropPage> createState() => _DropPageState();
}

class _DropPageState extends State<DropPage> {
  bool showAccessible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30.0, bottom: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dropy',
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
                    showAccessible = false;
                  });
                },
                child: Container(
                  width: 160,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:
                        showAccessible ? Colors.grey[100] : Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Nadchodzące',
                    style: TextStyle(
                      color: showAccessible ? Colors.grey[800] : Colors.white,
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
                    showAccessible = true;
                  });
                },
                child: Container(
                  width: 160,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:
                        showAccessible ? Colors.deepPurple : Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Dostępne',
                    style: TextStyle(
                      color: showAccessible ? Colors.white : Colors.grey[800],
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
            child: showAccessible
                ? Consumer<AccessibleCart>(
                    builder: (context, accessibleCart, child) {
                      return ListView.builder(
                        itemCount:
                            accessibleCart.getAccessibleShoeList().length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          AccessibleShoeDropModel accessibleShoe =
                              accessibleCart.getAccessibleShoeList()[index];
                          return AccessibleShoeDropTile(
                            accessibleShoe: accessibleShoe,
                          );
                        },
                      );
                    },
                  )
                : Consumer<Cart>(
                    builder: (context, cart, child) {
                      return ListView.builder(
                        itemCount: cart.getShoeList().length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          ShoeDropModel shoe = cart.getShoeList()[index];
                          return ShoeDropTile(
                            shoe: shoe,
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
