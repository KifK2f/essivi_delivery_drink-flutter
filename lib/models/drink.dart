class Drink {
  final String name;
  final String description;
  final String imagePath;
  final double price; // Prix en Francs CFA
  // final int quantity;
  final DrinkType drinkType;
  final List<Addon> availableAddons; // [Honey, Whipped Cream, Extra Sugar]

  Drink({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    // required this.quantity,
    required this.drinkType,
    required this.availableAddons,
  });
}

enum DrinkType {
  biere, // Bière
  soda, // Soda
  jus, // Jus de fruits
  vin, // Vin
  energie, // Boisson énergétique
  locale // Boissons locales togolaises
}

// enum DrinkType {
//   "Bière", // Bière
//   "Soda", // Soda
//   "Jus de fruits", // Jus de fruits
//   "Vin", // Vin
//   "Boisson énergétique", // Boisson énergétique
//   "Boissons locales togolaises" //Boissons locales togolaises
// }
// enum DrinkType {
//   beer, // Bière
//   soda, // Soda
//   juice, // Jus de fruits
//   wine, // Vin
//   energyDrink, // Boisson énergétique
//   localTogoDrink //Boissons locales togolaises
// }

// Les complements a une boisson
class Addon {
  final String name;
  final double price;

  Addon({
    required this.name,
    required this.price,
  });
}























// enum DrinkType {
//   // Boissons internationales
//   beer,        // Bière
//   soda,        // Soda
//   juice,       // Jus de fruits
//   wine,        // Vin
//   energyDrink, // Boisson énergétique
//   liqueur,     // Liqueur
//   hotBeverage, // Boisson chaude (thé, café, etc.)

//   // Boissons locales togolaises
//   LocalTogoDrink_palmWine,    // Vin de palme (Sodabi)
//   LocalTogoDrink_tchakpa,     // Tchakpa (Bière de mil)
//   LocalTogoDrink_bissap,      // Jus de bissap (Hibiscus)
//   LocalTogoDrink_zomi,        // Bière de sorgho
//   LocalTogoDrink_gingerDrink, // Jus de gingembre
//   LocalTogoDrink_baobabDrink, // Jus de baobab
//   LocalTogoDrink_sodabi       // Sodabi (Liqueur locale alcoolisée)
// }

