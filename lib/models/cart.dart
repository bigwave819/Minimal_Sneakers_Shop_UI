import 'package:flutter/material.dart';
import 'package:sneakers/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  final List<Shoe> shoeShop = [
    Shoe(
      name: "Air Max",
      price: "220",
      description: "Lightweight and breathable",
      imagePath: "images/sneakers1.png",
    ),
    Shoe(
      name: "Jordan",
      price: "240",
      description: "Iconic and stylish basketball sneakers",
      imagePath: "images/sneakers2.jpeg",
    ),
    Shoe(
      name: "Yeezy",
      price: "300",
      description: "Trendy and super comfortable",
      imagePath: "images/sneakers3.jpeg",
    ),
    Shoe(
      name: "Blazer",
      price: "180",
      description: "Classic streetwear design",
      imagePath: "images/sneakers3.jpeg",
    ),
  ];

  // list of items in the user's cart
  final List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
