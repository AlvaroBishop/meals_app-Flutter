import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../data.dart';

class CategoriesScreen extends StatelessWidget {

  @override
  Widget build( BuildContext context ) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('DeliMeal')),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: [
          ...DUMMY_CATEGORIES.map(( catData ) => CategoryItem(
            id: catData.id,
            title: catData.title, color: catData.color!
            ))
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2, 
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
      ),
    );
  }
}
