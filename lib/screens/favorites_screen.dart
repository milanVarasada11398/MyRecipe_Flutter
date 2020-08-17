import '../models/meal.dart';
import 'package:flutter/material.dart';
import '../widgets/meal_Item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
       return Center(
        child: Text('You have no favorites yet - start adding some!!'));
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            title: favoriteMeals[index].title,
            imageUrl: favoriteMeals[index].imageUrl,
            affordability: favoriteMeals[index].affordability,
            complexity: favoriteMeals[index].complexity,
            duration: favoriteMeals[index].duration,
            id: favoriteMeals[index].id,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
   
  }
}
