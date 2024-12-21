import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_current_location.dart';
import 'package:food_delivery/components/my_description_box.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_sliver_app_bar.dart';
import 'package:food_delivery/components/my_tab_bar.dart';

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
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
          body: Container(
            color: Colors.blue,
          )),
    );
  }
}
