import 'package:essivi_delivery_drink/components/my_current_location.dart';
import 'package:essivi_delivery_drink/components/my_description_box.dart';
import 'package:essivi_delivery_drink/components/my_drawer.dart';
import 'package:essivi_delivery_drink/components/my_drink_tile.dart';
import 'package:essivi_delivery_drink/components/my_sliver_app_bar.dart';
import 'package:essivi_delivery_drink/components/my_tab_bar.dart';
import 'package:essivi_delivery_drink/models/drink.dart';
import 'package:essivi_delivery_drink/models/drink_store.dart';
import 'package:essivi_delivery_drink/pages/drink_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: DrinkType.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //trier et retourner une liste d’aliments qui appartiennent à un type spécifique
  List<Drink> _filterMenuByType(DrinkType type, List<Drink> fullCatalog) {
    return fullCatalog.where((drink) => drink.drinkType == type).toList();
  }

  //Retourner la list des boissons dans un type donné
  List<Widget> getDrinkInThisCategory(List<Drink> fullCatalog) {
    return DrinkType.values.map((type) {
      //obtenir le catalogue de boisson
      List<Drink> typeCatalog = _filterMenuByType(type, fullCatalog);

      return ListView.builder(
        itemCount: typeCatalog.length,
        // physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          //obtenir une boisson
          final drink = typeCatalog[index];

          //return drink title UI
          return DrinkTile(
              drink: drink,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrinkPage(drink: drink),
                  )));
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                // Ma position actuelle
                MyCurrentLocation(),
                // const MyCurrentLocation(),

                //description box
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<DrinkStore>(
          builder: (context, drinkstore, child) => TabBarView(
            controller: _tabController,
            children: getDrinkInThisCategory(drinkstore.catalog_drink),
          ),
        ),
      ),
    );
  }
}
