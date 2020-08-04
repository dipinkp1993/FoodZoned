import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';

class CategoriesPage extends StatelessWidget {
  //This page controls entire content in the device of this app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FoodZoned',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map((catItem) => CategoryItem(
                  catItem.id,
                  catItem.title,
                  catItem.color,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
