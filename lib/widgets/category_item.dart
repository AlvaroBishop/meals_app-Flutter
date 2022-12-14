import 'package:flutter/material.dart';
import 'package:meals_app/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;


  const CategoryItem({super.key, required this.title, required this.color, required this.id});

  void selectCategory(BuildContext ctx) {
  Navigator.of(ctx).pushNamed('/category-meals', arguments: { 
    'id' : id,
    'title' : title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.titleLarge,),
        decoration: BoxDecoration( 
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7),
            color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
    
        ),
      ),
    );
  }
}