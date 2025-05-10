import 'package:essivi_delivery_drink/models/drink.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildTypeTabs() {
    return DrinkType.values.map((type) {
      return Tab(
        text: type.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildTypeTabs(),
        // tabs: [
        //   // 1er tab
        //   Tab(
        //     icon: Icon(Icons.home),
        //   ),
        //   // 2ème tab
        //   Tab(icon: Icon(Icons.settings)),
        //   // 3ème tab
        //   Tab(icon: Icon(Icons.person)),
        // ],
      ),
    );
  }
}
