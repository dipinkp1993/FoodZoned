import 'package:FoodMate/models/recipe.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/meal_recipe_item.dart';
import '../models/recipe.dart';

class CategoryRecipePage extends StatefulWidget {
  static const routeName = '/category-recipes';

  @override
  _CategoryRecipePageState createState() => _CategoryRecipePageState();
}

class _CategoryRecipePageState extends State<CategoryRecipePage> {
  String catTitle;
  List<Meal> displayedMeals;

  @override
  void initState() {
    //context won'be work here
    super.initState();
  }

  void didChangeDependencies() {
    //context will be work here
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    catTitle = routeArgs['title'];
    final catId = routeArgs['id'];
    displayedMeals = DUMMY_MEALS.where((element) {
      return element.categories.contains(catId);
    }).toList();

    super.didChangeDependencies();
  }

  void _removeMeal(mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
      ),
      body: displayedMeals.length > 0
          ? ListView.builder(
              itemBuilder: (ctx, index) {
                return MealItem(
                  id: displayedMeals[index].id,
                  title: displayedMeals[index].title,
                  imageUrl: displayedMeals[index].imageUrl,
                  duration: displayedMeals[index].duration,
                  complexity: displayedMeals[index].complexity,
                  affordability: displayedMeals[index].affordability,
                  removeItem: _removeMeal,
                );
              },
              itemCount: displayedMeals.length,
            )
          : Center(
              child: Text(
                "No Recipe avilable",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
    );
  }
}
