import 'package:flutter/material.dart';

enum Category {
  Indoor,
  Outdoor,
}
enum Type {
  Small,
  Tall,
  Medium,
}

class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String height;
  final String humidity;
  final Category category;
  final Type type;
  final String plants;
  bool isFavorite;
  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    @required this.plants,
    @required this.category,
    @required this.height,
    @required this.humidity,
    @required this.type,
    this.isFavorite = false,
  });
}
