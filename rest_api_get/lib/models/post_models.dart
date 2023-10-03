// To parse this JSON data, do
//
//     final postmodels = postmodelsFromJson(jsonString);

import 'dart:convert';

Postmodels postmodelsFromJson(String str) => Postmodels.fromJson(json.decode(str));



class Postmodels {
  List<Product> products;


  Postmodels({
    required this.products,

  });

  factory Postmodels.fromJson(Map<String, dynamic> json) => Postmodels(
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),

  );


}

class Product {
  int id;
  String title;
  String description;
  int price;
  double discountPercentage;
  double rating;
  int stock;
  String brand;
  String category;
  String thumbnail;
  List<String> images;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    price: json["price"],
    discountPercentage: json["discountPercentage"]?.toDouble(),
    rating: json["rating"]?.toDouble(),
    stock: json["stock"],
    brand: json["brand"],
    category: json["category"],
    thumbnail: json["thumbnail"],
    images: List<String>.from(json["images"].map((x) => x)),
  );


}
