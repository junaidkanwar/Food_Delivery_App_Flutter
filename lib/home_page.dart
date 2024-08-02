import 'package:flutter/material.dart';
import 'my_drawer.dart';
import 'my_silver_app_bar.dart';
import 'my_current_location.dart';
import 'my_description_box.dart';
import 'resturant.dart';
import 'food.dart';
import 'my_food_tile.dart';
import 'package:provider/provider.dart';
import 'food_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  // Tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // Return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return FoodTile(
            food: food,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodPage(food: food),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: const Text(''),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                MyCurrentLocation(),
                const MyDescriptionBox(),
                // Add the TabBar here
                Container(
                  color: Theme.of(context).colorScheme.background,
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    labelColor: Theme.of(context).colorScheme.primary,
                    unselectedLabelColor: Theme.of(context).colorScheme.onBackground,
                    tabs: FoodCategory.values.map((category) {
                      return Tab(
                        text: category.name,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
        body: Consumer<Resturant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
    ); // Scaffold
  }
}

extension on FoodCategory {
  String get name {
    switch (this) {
      case FoodCategory.burgers:
        return 'Burgers';
      case FoodCategory.salads:
        return 'Salads';
      case FoodCategory.sides:
        return 'Sides';
      case FoodCategory.desserts:
        return 'Desserts';
      case FoodCategory.drinks:
        return 'Driinks';
      default:
        return '';
    }
  }
}
