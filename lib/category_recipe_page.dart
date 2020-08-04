import 'package:flutter/material.dart';

class CategoryRecipePage extends StatelessWidget {
  static const routeName = '/category-recipes';
  /* final String catId;
  final String catTitle;
  CategoryRecipePage(this.catId, this.catTitle);*/
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catTitle = routeArgs['title'];
    final catId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
      ),
      body: Center(
        child: Text("Recipes for $catTitle Category"),
      ),
    );
  }
}
