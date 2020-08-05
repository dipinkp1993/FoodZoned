import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/meal_recipe_item.dart';

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
    final categoryRecipes = DUMMY_MEALS.where((element) {
      return element.categories.contains(catId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryRecipes[index].id,
            title: categoryRecipes[index].title,
            imageUrl: categoryRecipes[index].imageUrl,
            duration: categoryRecipes[index].duration,
            complexity: categoryRecipes[index].complexity,
            affordability: categoryRecipes[index].affordability,
          );
        },
        itemCount: categoryRecipes.length,
      ),
    );
  }
}
