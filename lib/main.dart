import 'package:flutter/material.dart';
import './pages/categories_page.dart';
import './pages/category_recipe_page.dart';
import './pages/meal_recipe_page.dart';
import './pages/tabs_page.dart';
import './pages/tabs_page_bottom.dart';
import './pages/filter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodMate',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.cyan,
        canvasColor: Color.fromRGBO(255, 255, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: TabsPaged(),
      routes: {
        CategoryRecipePage.routeName: (ctx) => CategoryRecipePage(),
        MealRecipeDetail.routeName: (ctx) => MealRecipeDetail(),
        FilterPage.routeName: (ctx) => FilterPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesPage());
      },
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FootMate'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}*/
