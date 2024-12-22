import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_current_location.dart';
import 'package:food_delivery/components/my_description_box.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_food_tile.dart';
import 'package:food_delivery/components/my_sliver_app_bar.dart';
import 'package:food_delivery/components/my_tab_bar.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/resturant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tab bar controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out and reurn a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            // get individual food
            final food = categoryMenu[index];
            return MyFoodTile(food: food, onTap: () {});
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Home')),
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  title: MyTabBar(tabController: _tabController),
                  child: Column(
                    children: [
                      Spacer(), // to put it down

                      Divider(
                        indent: 20,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      // my current locaton
                      MyCurrentLocation(),

                      // description box
                      MyDescriptionBox()
                    ],
                  ),
                )
              ],
          body: Consumer<Resturant>(
              builder: (context, resturant, child) => TabBarView(
                  controller: _tabController,
                  children: getFoodInThisCategory(resturant.menu)))),
    );
  }
}
