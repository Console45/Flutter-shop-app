import 'package:flutter/material.dart';

enum Category {
  Fruits,
  Vegetables,
  Breakfast,
  Beverages,
}

class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final Nutrition nutrition;
  final Category category;
  bool isFavorite;
  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    @required this.category,
    this.nutrition,
    this.isFavorite = false,
  });
}

class Nutrition {
  final int calories;
  final String protein;
  final String fat;
  final String cabohydrate;

  Nutrition({
    @required this.calories,
    @required this.protein,
    @required this.fat,
    @required this.cabohydrate,
  });
}
