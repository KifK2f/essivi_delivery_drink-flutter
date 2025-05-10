// import 'package:essivi_delivery_drink/models/drink_store.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class MyReceipt extends StatelessWidget {
//   const MyReceipt({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Merci pour votre commande!"),
//             const SizedBox(height: 5),
//             Container(
//               decoration: BoxDecoration(
//                 border:
//                     Border.all(color: Theme.of(context).colorScheme.secondary),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               padding: const EdgeInsets.all(25),
//               child: Consumer<DrinkStore>(
//                   builder: (context, drinkstore, child) =>
//                       Text(drinkstore.displayCartReceipt())),
//             ),
//             const SizedBox(height: 5),
//             const Text("Le temps de livraison estimé est à 16h10"),
//             const SizedBox(
//               height: 100,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:essivi_delivery_drink/models/drink_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Merci pour votre commande!"),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(25),
              child: SizedBox(
                height: 200, // Ajuste cette valeur selon tes besoins
                child: SingleChildScrollView(
                  child: Consumer<DrinkStore>(
                    builder: (context, drinkstore, child) =>
                        Text(drinkstore.displayCartReceipt()),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text("Le temps de livraison estimé est à 16h10"),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
