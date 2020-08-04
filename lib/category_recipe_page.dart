import 'package:flutter/material.dart';

class CategoryRecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Category"),
      ),
      body: Center(
        child: Text("Recipes for a Particular Category"),
      ),
    );
  }
}
