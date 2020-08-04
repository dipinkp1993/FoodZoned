import 'package:flutter/material.dart';
import './categories_page.dart';
import './category_recipe_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodMate',
      theme: ThemeData(
        primarySwatch: Colors.orange,
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
      home: CategoriesPage(),
      routes: {
        '/category-recipes': (ctx) => CategoryRecipePage(),
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
