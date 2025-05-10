import 'package:collection/collection.dart';
import 'package:essivi_delivery_drink/models/cart_item.dart';
import 'package:essivi_delivery_drink/models/drink.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DrinkStore extends ChangeNotifier {
  final List<Drink> _catalog_drink = [
    //beer, // Bière
    Drink(
        name: "Awooyo",
        description:
            "LA BIÈRE QUI BONIFIE LA TRADITION DANS TOUTES SES DIMENSIONS",
        imagePath: "images/Beer/Awooyo.png",
        price: 700,
        drinkType: DrinkType.biere,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Beaufort",
        description: "LA BIÈRE DES JEUNES ADULTES URBAINS",
        imagePath: "images/Beer/Beaufort.png",
        price: 700,
        drinkType: DrinkType.biere,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Budweiser",
        description:
            "LA BIÈRE AMÉRICAINE RAFRAÎCHISSANTE POUR TOUS LES MOMENTS CONVIVIAUX",
        imagePath: "images/Beer/Budweiser.jpg",
        price: 1500,
        drinkType: DrinkType.biere,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Castel Beer",
        description: "LE GOÛT DE LA RÉUSSITE",
        imagePath: "images/Beer/Castel_beer.png",
        price: 700,
        drinkType: DrinkType.biere,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Doppel Munich",
        description: "FORCE, PUISSANCE",
        imagePath: "images/Beer/Doppel_munich.png",
        price: 1500,
        drinkType: DrinkType.biere,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Eku Bavaria",
        description: "LA BIÈRE DE L'EXCELLENCE",
        imagePath: "images/Beer/eku.png",
        price: 700,
        drinkType: DrinkType.biere,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Guiness",
        description: "UNE BIÈRE NOIRE AU GOÛT UNIQUE ET INTENSE",
        imagePath: "images/Beer/Guiness.png",
        price: 800,
        drinkType: DrinkType.biere,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Heineken",
        description: "BIÈRE PREMIUM AVEC UN GOÛT RAFRAÎCHISSANT",
        imagePath: "images/Beer/Heineken.jpg",
        price: 800,
        drinkType: DrinkType.biere,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Lager",
        description: "UNE BIÈRE BLONDE LÉGÈRE ET RAFRAÎCHISSANTE",
        imagePath: "images/Beer/Lager.png",
        price: 700,
        drinkType: DrinkType.biere,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Pils",
        description: "BIÈRE DE QUALITÉ AVEC UN GOÛT DOUX ET AGRÉABLE",
        imagePath: "images/Beer/Pils.png",
        price: 700,
        drinkType: DrinkType.biere,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Racines",
        description: "UNE BIÈRE LOCALE AVEC DES SAVEURS AUTHENTIQUES",
        imagePath: "images/Beer/Racines.png",
        price: 800,
        drinkType: DrinkType.biere,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),

    //localTogoDrink //Boissons locales togolaises
    Drink(
        name: "Alangba",
        description: "BOISSON TRADITIONNELLE AUX SAVEURS INTENSES",
        imagePath: "images/BoissonLocal/Alangba.jpeg",
        price: 800,
        drinkType: DrinkType.locale,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Bissap",
        description: "INFUSION DE FLEURS D'HIBISCUS RAFRAÎCHISSANTE",
        imagePath: "images/BoissonLocal/Bissap.jpeg",
        price: 800,
        drinkType: DrinkType.locale,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Gingembre",
        description: "BOISSON PIQUANTE À BASE DE GINGEMBRE NATUREL",
        imagePath: "images/BoissonLocal/gingembre.jpeg",
        price: 800,
        drinkType: DrinkType.locale,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Sodabi",
        description: "ALCOOL TRADITIONNEL AVEC UNE SAVEUR FORTEMENT AROMATISÉE",
        imagePath: "images/BoissonLocal/Sodabi.jpeg",
        price: 800,
        drinkType: DrinkType.locale,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Tamarin",
        description: "BOISSON ACIDULÉE À BASE DE FRUITS DE TAMARIN",
        imagePath: "images/BoissonLocal/tamarin.jpeg",
        price: 1500,
        drinkType: DrinkType.locale,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Vin de palme",
        description: "ALCOOL TRADITIONNEL TIRÉ DU PALMIER",
        imagePath: "images/BoissonLocal/vin_de_palme.jpg",
        price: 800,
        drinkType: DrinkType.locale,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),

    //energyDrink, // Boisson énergétique
    Drink(
        name: "Red Bull",
        description: "BOISSON ÉNERGISANTE POUR RESTER VIF ET ACTIF",
        imagePath: "images/EnergyDrink/RedBull.jpg",
        price: 1000,
        drinkType: DrinkType.energie,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Rush",
        description: "BOISSON ÉNERGISANTE AVEC UNE SAVEUR FRUITÉE",
        imagePath: "images/EnergyDrink/rush-bottle.png",
        price: 1000,
        drinkType: DrinkType.energie,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Sport Actif",
        description: "BOISSON ÉNERGISANTE POUR LA PERFORMANCE SPORTIVE",
        imagePath: "images/EnergyDrink/sport-actif-can.png",
        price: 800,
        drinkType: DrinkType.energie,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Xxl",
        description: "BOISSON ÉNERGISANTE POUR BOOSTER L'ÉNERGIE",
        imagePath: "images/EnergyDrink/xxl.png",
        price: 800,
        drinkType: DrinkType.energie,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),

    //juice, // Jus de fruits
    Drink(
        name: "Jus d'ananas",
        description: "JUS FRAIS À BASE D'ORANGES MÛRES ET DOUCES",
        imagePath: "images/juice/ananas.webp",
        price: 1500,
        drinkType: DrinkType.jus,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Jus de citron",
        description: "US ACIDULÉ ET RAFRAÎCHISSANT POUR UNE DOSE DE VITAMINE C",
        imagePath: "images/juice/Citron.jpeg",
        price: 1000,
        drinkType: DrinkType.jus,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Jus de mangue",
        description: "JUS EXOTIQUE À BASE DE MANGUES RIPE ET JUTEUSES",
        imagePath: "images/juice/mangue.jpg",
        price: 1000,
        drinkType: DrinkType.jus,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Jus de noix de coco",
        description:
            "JUS FRAIS À BASE DE NOIX DE COCO, RICHE EN SAVEUR EXOTIQUE",
        imagePath: "images/juice/noix_de_coco.jpg",
        price: 800,
        drinkType: DrinkType.jus,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Jus d'orange",
        description: "JUS FRAIS EXPRIMÉ À PARTIR D'ORANGES 100% NATURELLES",
        imagePath: "images/juice/orange.jpg",
        price: 800,
        drinkType: DrinkType.jus,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),

    //soda, // Soda
    Drink(
        name: "Coca Cola",
        description: "SODA D'UN GOÛT UNIQUE, FRAIS ET PÉTILLANT",
        imagePath: "images/soda/CocaCola.jpg",
        price: 1000,
        drinkType: DrinkType.soda,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Fanta",
        description: "SODA DOUX ET SUCRÉ, RICHE EN SAVEUR D'AGRUMES",
        imagePath: "images/soda/Fanta.jpeg",
        price: 800,
        drinkType: DrinkType.soda,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Pepsi",
        description: "SODA CLASSIQUE, DOUX ET PÉTILLANT",
        imagePath: "images/soda/Pepsi.jpg",
        price: 1000,
        drinkType: DrinkType.soda,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Sprite",
        description: "SODA LÉGER ET RAFRAÎCHISSANT AVEC UNE NOTE D'AGRUMES",
        imagePath: "images/soda/Sprite.jpg",
        price: 1000,
        drinkType: DrinkType.soda,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),

    //wine, // Vin
    Drink(
        name: "Chateau Barreyres",
        description:
            "VIN ROUGE D'UNE EXCELLENTE QUALITÉ AVEC UN GOÛT RICHE ET CORPOREL",
        imagePath: "images/wine/Chateau-barreyres.png",
        price: 20000,
        drinkType: DrinkType.vin,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Chateau Darcins",
        description: "VIN ROUGE COMPLEXE AVEC DES ARÔMES DE FRUITS NOIRS",
        imagePath: "images/wine/Chateau-darcins.png",
        price: 10000,
        drinkType: DrinkType.vin,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Chateau Di Lort",
        description: "VIN ROUGE RICHE EN SAVEUR, AVEC DES TANINS DOUX",
        imagePath: "images/wine/Chateau-di-lort.png",
        price: 40000,
        drinkType: DrinkType.vin,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Chateau Ferrande",
        description: "",
        imagePath: "images/wine/Chateau-ferrande.png",
        price: 30000,
        drinkType: DrinkType.vin,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Chateau Montlabert",
        description: "VIN DE BORDEAUX AVEC UNE NOTE FRUITÉE ET TANINÉE",
        imagePath: "images/wine/Chateau-barreyres.png",
        price: 60000,
        drinkType: DrinkType.vin,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Cru de la Maqueline",
        description:
            "VIN DE QUALITÉ SUPERIEURE AVEC DES SAVEURS RICHES ET FINES",
        imagePath: "images/wine/Cru-de-la-maqueline.png",
        price: 80000,
        drinkType: DrinkType.vin,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
    Drink(
        name: "Saint Joseph",
        description:
            "VIN ROUGE DE LA RÉGION DU RHÔNE, AVEC DES NOTES DE FRUITS ROUGES",
        imagePath: "images/wine/Saint_joseph.jpg",
        price: 70000,
        drinkType: DrinkType.vin,
        availableAddons: [
          Addon(name: "Citron", price: 200),
          Addon(name: "Glace", price: 300),
          Addon(name: "Gingembre", price: 400)
        ]),
  ];

  //Panier de l'utilisateur
  final List<CartItem> _cart = [];

  //Adresse de livraison qui peut changer ou etre mis a jour
  String _deliveryAdress = "Nyekonakpoè Lomé-Togo";

  /*
    Getters
  */

  List<Drink> get catalog_drink => _catalog_drink;
  List<CartItem> get cart => _cart;
  String get deliveryAdress => _deliveryAdress;

  /*
  Operations
  */

  // //Panier de l'utilisateur
  // final List<CartItem> _cart = [];

  //Ajouter au panier
  void addToCart(Drink drink, List<Addon> selectedAddons) {
    // Voir s'il y'a un element du panier avec le meme nom de boisson et d'addon selectionné
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // Verifier si les elements des boissons sont les memes
      bool isSameDrink = item.drink == drink;

      //Verifier si la liste des addons selectionées sont les memes
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameDrink && isSameAddons;
    });

    // Si l'eelment existe deja, Augemnter sa quantite
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //Si non ajouter
    else {
      _cart.add(CartItem(drink: drink, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  //Retirer du panier
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //Obtenir le prix total du panier
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.drink.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //Obtenir le nombre total d’articles dans le panier
  int getTotalItemCount() {
    int totalItemcount = 0;

    for (CartItem cartItem in _cart) {
      totalItemcount += cartItem.quantity;
    }

    return totalItemcount;
  }

  //Vider le panier
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //Mis a  jour de l'adresse de livraison
  void updateDeliveryAdress(String newAdress) {
    _deliveryAdress = newAdress;
    notifyListeners();
  }

  /*
    Helpers
    Les helpers en Flutter sont des fonctions réutilisables qui simplifient le code et améliorent sa lisibilité.
   */

  //Générer un reçu
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.write("voici cotre reçu.");
    receipt.write("");

    //Formater la date pour inclure les seondes
    String formattedDate =
        DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.drink.name} - ${_formatPrice(cartItem.drink.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(
            "Accompagnements : ${_formatAddon(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("-----------------");
    receipt.writeln();
    receipt.writeln("Nbre de boissons : ${getTotalItemCount()}");
    receipt.writeln("Prix totale : ${_formatPrice(getTotalPrice())}");
    receipt.writeln("");
    receipt.writeln("Adresse de livraison : $deliveryAdress");

    return receipt.toString();
  }

  //Convertir la valeur double en argent
  String _formatPrice(double price) {
    return "${price.toStringAsFixed(2)} Francs CFA";
  }

  //Convertir la liste des Addons en un resumé de chaine de cararactere
  String _formatAddon(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
