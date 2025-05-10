import 'package:essivi_delivery_drink/components/my_button.dart';
import 'package:essivi_delivery_drink/models/drink.dart';
import 'package:essivi_delivery_drink/models/drink_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrinkPage extends StatefulWidget {
  final Drink drink;
  final Map<Addon, bool> selectedAddons = {};
  DrinkPage({super.key, required this.drink}) {
    //Initialiser les addons sélectionnés pour qu’ils soient false
    for (Addon addon in drink.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<DrinkPage> createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinkPage> {
  //Methode pour ajouter au panier
  void addToCart(Drink drink, Map<Addon, bool> selectedAddons) {
    //Fermer la page de boisson courante pour aller au menu
    Navigator.pop(context);

    //Formater les accompagnements selectionnés
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.drink.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }

    //Ajouter aux panier
    context.read<DrinkStore>().addToCart(drink, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Scaffold UI
        Scaffold(
          // appBar: AppBar(),
          backgroundColor: Theme.of(context).colorScheme.background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                //Image de la boisson
                Image.asset(
                  widget.drink.imagePath,
                  height: 200,
                  width: 1000,
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Nom de la boisson
                      Text(
                        widget.drink.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      //Prix de la boisson
                      Text(
                        widget.drink.price.toString() + ' Francs CFA',
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      //Description de la boisson
                      Text(widget.drink.description),

                      const SizedBox(
                        height: 10,
                      ),

                      Divider(color: Theme.of(context).colorScheme.secondary),
                      const SizedBox(
                        height: 10,
                      ),

                      Text(
                        "Accompagnements",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      // Complement ou accompagnement
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).colorScheme.secondary),
                            borderRadius: BorderRadius.circular(8)),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.drink.availableAddons.length,
                          itemBuilder: (context, index) {
                            //Obtenir un complement individuel
                            Addon addon = widget.drink.availableAddons[index];

                            //Retourner un check box UI
                            return CheckboxListTile(
                                title: Text(addon.name),
                                subtitle: Text(
                                  addon.price.toString() + ' Francs CFA',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                ),
                                value: widget.selectedAddons[addon],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAddons[addon] = value!;
                                  });
                                });
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // Button -> ajouter au panier
                MyButton(
                    text: "Ajouter au panier",
                    onTap: () =>
                        addToCart(widget.drink, widget.selectedAddons)),

                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),

        //Back Button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        )
      ],
    );
  }
}
