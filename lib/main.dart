import 'package:essivi_delivery_drink/services/auth/auth_gate.dart';
// import 'package:essivi_delivery_drink/services/auth/login_or_register.dart';
import 'package:essivi_delivery_drink/firebase_options.dart';
import 'package:essivi_delivery_drink/models/drink_store.dart';
// import 'package:essivi_delivery_drink/pages/home_page.dart';
import 'package:essivi_delivery_drink/themes/theme_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => DrinkStore()),
    ],
    child: const MyApp(),
  ));
}
// void main() {
//   runApp(MultiProvider(
//     providers: [
//       //fourniseur ou  providerdu theme (theme sombe et claire)
//       ChangeNotifierProvider(create: (context) => ThemeProvider()),

//       //fourniseur ou provider du drinkstore (magasin de boisson)
//       ChangeNotifierProvider(create: (context) => DrinkStore()),
//     ],
//     child: const MyApp(),
//   ));

//   // runApp(ChangeNotifierProvider(
//   //   create: (context) => ThemeProvider(),
//   //   child: const MyApp(),
//   // ));
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
