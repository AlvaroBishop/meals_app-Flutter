
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  void selectMeal() {}
  const MealItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), 
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: Column(children: [
        Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topRight: Radius.circular(15)),
          ),
        ],)
      ]),
      ),
    );
  }
}