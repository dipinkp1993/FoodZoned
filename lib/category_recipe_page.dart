import 'package:flutter/material.dart';

class CategoryRecipePage extends StatelessWidget {
  final String catId;
  final String catTitle;
  CategoryRecipePage(this.catId, this.catTitle);
  @override
  Widget build(BuildContext context) {
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
