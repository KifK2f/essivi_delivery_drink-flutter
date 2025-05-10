import 'package:essivi_delivery_drink/components/my_button.dart';
import 'package:essivi_delivery_drink/components/my_cart_tile.dart';
import 'package:essivi_delivery_drink/models/drink_store.dart';
import 'package:essivi_delivery_drink/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DrinkStore>(builder: (context, drinkStore, child) {
      //panier
      final userCart = drinkStore.cart;

      //Scafold UI
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: const Text('Panier'),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            //clear cart button
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Voulez-vous vraiment vider le panier?"),
                    actions: [
                      //Cancel button
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Annuler"),
                      ),
                      //yes button
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          drinkStore.clearCart();
                        },
                        child: const Text("Oui"),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
        body: Column(
          children: [
            //Liste de panier
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty
                      ? const Expanded(
                          child:
                              Center(child: const Text("Le panier est vide..")))
                      : Expanded(
                          child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                //affichage de chaque drink dans le panier
                                final cartItem = userCart[index];
                                return MyCartTile(cartItem: cartItem);
                              }),
                        ),
                ],
              ),
            ),

            //Button to pay
            MyButton(
                text: "Passer à la caisse",
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
                    ))),
            const SizedBox(height: 25),
          ],
        ),
      );
    });
  }
}
