import 'package:drop_check/models/shoe_drop_model.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //
  List<ShoeDropModel> shoeShop = [
    ShoeDropModel(
      name: 'Jordan 1 TravisScott',
      price: '4800',
      imagePath: 'lib/images/jordanTravis.webp',
      description: '',
      dropTime: '02.06 | 12:00',
    ),
    ShoeDropModel(
      name: 'Jordan 1 Obsidian',
      price: '2460',
      imagePath: 'lib/images/jordanUNC.jpg',
      description: '',
      dropTime: '03.06 | 9:00',
    ),
    ShoeDropModel(
      name: 'Jordann 1 Low Quai',
      price: '1430',
      imagePath: 'lib/images/jordan1LowQuai.webp',
      description: '',
      dropTime: '03.06 | 9:00',
    ),
    ShoeDropModel(
      name: 'Jordan 4 Retro Frozen',
      price: '2380',
      imagePath: 'lib/images/jordan4retrofrozenmoments2.jpg',
      description: '',
      dropTime: '03.06 | 11:00',
    ),
  ];

  // list of items in user cart
  List<ShoeDropModel> userCart = [];

  // get list of shoes for sale
  List<ShoeDropModel> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<ShoeDropModel> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(ShoeDropModel shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(ShoeDropModel shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
