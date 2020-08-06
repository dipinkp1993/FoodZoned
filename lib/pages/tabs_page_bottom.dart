import 'package:flutter/material.dart';
import '../pages/categories_page.dart';
import '../pages/favourites_page.dart';
import '../widgets/main_drawer.dart';

class TabsPaged extends StatefulWidget {
  @override
  _TabsPagedState createState() => _TabsPagedState();
}

class _TabsPagedState extends State<TabsPaged> {
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoriesPage(),
      'title': 'Categories',
    },
    {
      'page': FavouritesPage(),
      'title': 'Your Favourites',
    },
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow,
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPageIndex,
        //type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Favourites'),
          ),
        ],
      ),
    );
  }
}
