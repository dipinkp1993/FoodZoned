import 'package:flutter/material.dart';

class MealRecipeDetail extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text("Meal with id $mealId"),),
      body:Center(child: Text("Hiii $mealId"),),);
  }
}
