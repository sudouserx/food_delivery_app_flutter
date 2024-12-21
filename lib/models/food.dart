 // food class
import 'package:flutter/material.dart';

class Food extends ChangeNotifier {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.category,
      required this.availableAddons});
}

// food categories

enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// food add ons
class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
