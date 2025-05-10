import 'package:essivi_delivery_drink/models/drink_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});

  final textController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Votre position actuelle"),
        content: TextField(
          controller: textController,
          decoration: const InputDecoration(hintText: "Entrer une adresse..."),
        ),
        actions: [
          //Bouton annuler
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              textController.clear();
            },
            child: const Text('Annuler'),
          ),

          //Bouton enregistrer
          MaterialButton(
            onPressed: () {
              //Metter a jour l'adresse
              String newAddress = textController.text;
              context.read<DrinkStore>().updateDeliveryAdress(newAddress);

              Navigator.pop(context);
              textController.clear();
            },
            child: const Text('Enregistrer'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Livrer maintenant",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                //Adresse
                Consumer<DrinkStore>(
                    builder: (context, drinkstore, child) => Text(
                          drinkstore.deliveryAdress,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                // Text(
                //   "Nyekonakpoe, Lomé - Togo",
                //   style: TextStyle(
                //     color: Theme.of(context).colorScheme.inversePrimary,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),

                // Menu deroulant
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
