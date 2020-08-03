import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  //This page controls entire content in the device of this app
  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 3 / 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
    ));
  }
}
