import 'package:essivi_delivery_drink/components/my_drawer_tile.dart';
import 'package:essivi_delivery_drink/pages/settings_page.dart';
import 'package:essivi_delivery_drink/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //Logo de l'application
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          //Vignettage de la page d'accueil
          MyDrawerTile(
              text: "ACCUEIL",
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),

          //Vignette des paramètres
          MyDrawerTile(
              text: "PARMETRES",
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              }),

          const Spacer(),
          //Vignette de deconnexion
          MyDrawerTile(
              text: "DECONNEXION",
              icon: Icons.logout,
              onTap: () {
                logout();
                Navigator.pop(context);
              }),

          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
