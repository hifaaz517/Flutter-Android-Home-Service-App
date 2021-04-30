import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Category {
  final int serviceID;
  final String categoryName;
  final String image;

  Category(
    this.categoryName,
    this.image,
    this.serviceID,
  );
}

class CategoryProvider with ChangeNotifier {
  List<Category> _list = [
    Category(
      "Ac Scervice",
      "assets/Ac service BW.svg",
      1,
    ),
    Category(
      "Refrigerator",
      "assets/Refrigerator.svg",
      2,
    ),
    Category(
      "Washing Machine",
      "assets/Ac service BW.svg",
      3,
    ),
    Category(
      "Electric Service",
      "assets/Ac service BW.svg",
      4,
    ),
    Category(
      "Plumbing Service",
      "assets/Ac service BW.svg",
      5,
    ),
    Category(
      "Carpentry Screvice",
      "assets/Ac service BW.svg",
      6,
    ),
    Category(
      "Painting Screvice",
      "assets/Ac service BW.svg",
      7,
    ),
    Category(
      "Cleaning Screvice",
      "assets/Ac service BW.svg",
      8,
    ),
    Category(
      "Home Appliences",
      "assets/Ac service BW.svg",
      9,
    ),
    Category(
      "Pest Control",
      "assets/Ac service BW.svg",
      10,
    ),
    Category(
      "Interior Decor",
      "assets/Ac service BW.svg",
      11,
    ),
  ];
  List<Category> get list {
    return [..._list];
  }
}
