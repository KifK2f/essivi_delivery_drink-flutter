import 'package:essivi_delivery_drink/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parametres'),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12)),
            margin: const EdgeInsets.only(left: 25, top: 10, right: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // mode sombre
                Text(
                  "Mode sombre",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                //Switcher de mode
                Switch(
                  value: Provider.of<ThemeProvider>(context, listen: false)
                      .isDarkMode,
                  onChanged: (value) =>
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toogleTheme(),
                ),
                // thumbColor: MaterialStateProperty.all(
                //     Color.fromARGB(223, 9, 2, 17)),
                // trackColor: MaterialStateProperty.all(Color(0xFFD9D9D9)),
                // activeTrackColor: Color(0xFF81B4FE),
                // activeColor: Colors.green, // Couleur du bouton (thumb)
                // inactiveThumbColor: Colors.grey, // Bouton désactivé
                // trackColor: MaterialStateProperty.resolveWith(
                //     (states) => states.contains(MaterialState.selected)
                //         ? Colors.green.withOpacity(0.5) // Track activé
                //         : Colors.grey.withOpacity(0.3)), // Track désactivé
              ],
            ),
          ),
        ],
      ),
    );
  }
}
