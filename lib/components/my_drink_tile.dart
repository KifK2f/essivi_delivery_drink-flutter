import 'package:essivi_delivery_drink/models/drink.dart';
import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  final Drink drink;
  final void Function()? onTap;

  const DrinkTile({super.key, required this.drink, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  //text drink detail
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(drink.name),
                        Text(drink.price.toString() + ' Francs CFA',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary)),
                        SizedBox(height: 10),
                        Text(
                          drink.description,
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 15),

                  //image drink
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      drink.imagePath,
                      height: 100,
                    ),
                  ),
                ],
              ),
            )),

        //Ligne separatrice
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        ),
      ],
    );
  }
}
