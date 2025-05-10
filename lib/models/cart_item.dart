import 'package:essivi_delivery_drink/models/drink.dart';
// import 'package:flutter/material.dart';

class CartItem {
  Drink drink;
  List<Addon> selectedAddons;
  int quantity;

  CartItem(
      {required this.drink, required this.selectedAddons, this.quantity = 1});

  double get totalPrice {
    double addonsPrice =
        selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (drink.price + addonsPrice) * quantity;
  }
}
