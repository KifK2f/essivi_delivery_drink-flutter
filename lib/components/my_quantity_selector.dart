import 'package:essivi_delivery_drink/models/drink.dart';
import 'package:flutter/material.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity;
  final Drink drink;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  const MyQuantitySelector(
      {super.key,
      required this.quantity,
      required this.drink,
      required this.onDecrement,
      required this.onIncrement});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Bouton decroissant
          GestureDetector(
            onTap: onDecrement,
            child: Icon(Icons.remove,
                size: 20, color: Theme.of(context).colorScheme.primary),
          ),

          //Compteur de la quantite
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                width: 20,
                child: Center(
                  child: Text(
                    quantity.toString(),
                    // style: TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              )),

          // Bouton croissant
          GestureDetector(
            onTap: onIncrement,
            child: Icon(Icons.add,
                size: 20, color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
