import 'package:flutter/material.dart';
import '../pages/categories_page.dart';
import '../pages/favourites_page.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Meal'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Category',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'Favourites',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              CategoriesPage(),
              FavouritesPage(),
            ],
          ),
        ));
  }
}
