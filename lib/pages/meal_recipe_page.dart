import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealRecipeDetail extends StatelessWidget {
  static const routeName = '/meal-detail';
  Widget buildSectionHeading(BuildContext context, String heading) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        heading,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final mealsData = DUMMY_MEALS.firstWhere((meals) => meals.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(mealsData.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                mealsData.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionHeading(context, "Ingredients"),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.blueGrey,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemBuilder: (ctx, index) => Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(
                        mealsData.ingredients[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
                itemCount: mealsData.ingredients.length,
              ),
            ),
            buildSectionHeading(context, "Steps to Cook"),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.blueGrey,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemBuilder: (ctx, index) => ListTile(
                  leading: CircleAvatar(
                    child: Text('# ${(index + 1)}'),
                  ),
                  title: Text(
                    mealsData.steps[index],
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                ),
                itemCount: mealsData.steps.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop(mealId);
        },
        child: Icon(
          Icons.delete_sweep,
          color: Colors.white,
        ),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
