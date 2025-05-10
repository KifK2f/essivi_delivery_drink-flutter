import 'package:essivi_delivery_drink/components/my_quantity_selector.dart';
import 'package:essivi_delivery_drink/models/cart_item.dart';
import 'package:essivi_delivery_drink/models/drink_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<DrinkStore>(
        builder: (context, drinkStore, child) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.secondary,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              cartItem.drink.imagePath,
                              height: 100,
                              width: 100,
                            )),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cartItem.drink.name),
                            Text(cartItem.drink.price.toString() +
                                ' Francs CFA'),

                            const SizedBox(
                              height: 10,
                            ),
                            //Bouton croissant et decroissant
                            MyQuantitySelector(
                                quantity: cartItem.quantity,
                                drink: cartItem.drink,
                                onDecrement: () {
                                  drinkStore.removeFromCart(cartItem);
                                },
                                onIncrement: () {
                                  drinkStore.addToCart(
                                      cartItem.drink, cartItem.selectedAddons);
                                }),
                          ],
                        ),

                        // const Spacer(),

                        // //Bouton croissant et decroissant
                        // MyQuantitySelector(
                        //     quantity: cartItem.quantity,
                        //     drink: cartItem.drink,
                        //     onDecrement: () {
                        //       drinkStore.removeFromCart(cartItem);
                        //     },
                        //     onIncrement: () {
                        //       drinkStore.addToCart(
                        //           cartItem.drink, cartItem.selectedAddons);
                        //     }),
                      ],
                    ),
                  ),

                  //Addons
                  SizedBox(
                    height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(
                          left: 10, bottom: 10, right: 10),
                      children: cartItem.selectedAddons
                          .map(
                            (addon) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: FilterChip(
                                label: Row(
                                  children: [
                                    //addon name
                                    Text(addon.name),

                                    //addon price
                                    Text(
                                      addon.price.toString() + ' Francs CFA',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                  ],
                                ),
                                shape: StadiumBorder(
                                  side: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                onSelected: (value) {},
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary,
                                labelStyle: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ));
  }
}
