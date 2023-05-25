import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/models/category.dart';
import 'package:shopping_list/data/categories.dart';

final groceryItems =
 [
  const GroceryItem(
      id: 'a',
      name: 'Milk',
      quantity: 1,
      category:  Category(
    'Dairy',
    Color.fromARGB(255, 0, 208, 255),
  ),
  
  ),
  const GroceryItem(
      id: 'b',
      name: 'Bananas',
      quantity: 5,
      category: Category(
    'Fruit',
    Color.fromARGB(255, 145, 255, 0),
  ), ),
  const GroceryItem(
      id: 'c',
      name: ' Steak',
      quantity: 1,
      category: Category(
    'Meat',
    Color.fromARGB(255, 255, 102, 0),
  ),
      
      
      
      ),
];
