// Flutter imports:
import 'package:flutter/material.dart';

class Category {
  Category({required this.title, required this.imgUrl});

  String title;
  String imgUrl;
}

final List<Category> categories = [
  Category(title: 'Electronics', imgUrl: 'assets/images/catElectronics.png'),
  Category(title: 'Fashion', imgUrl: 'assets/images/catFashion.png'),
  Category(title: 'Health', imgUrl: 'assets/images/catHealth.png'),
  Category(title: 'Groceries', imgUrl: 'assets/images/catGroceries.png'),
  Category(title: 'Groceries', imgUrl: 'assets/images/catGroceries.png'),
  Category(title: 'Groceries', imgUrl: 'assets/images/catGroceries.png'),
];

class Product {
  Product(
      {required this.tag,
      required this.isFavourite,
      required this.imgUrl,
      required this.title,
      required this.price,
      required this.reviewStars,
      required this.reviewCount});

  String tag;
  bool isFavourite;
  String imgUrl;
  String title;
  double price;
  double reviewStars;
  int reviewCount;
}

final List<Product> products = [
  Product(
    tag: 'New',
    isFavourite: true,
    imgUrl: 'assets/images/latestOne.png',
    title: 'Awesome T-shirt',
    price: 139.99,
    reviewStars: 5.0,
    reviewCount: 45,
  ),
  Product(
    tag: 'New',
    isFavourite: true,
    imgUrl: 'assets/images/latestTwo.png',
    title: 'Awesome T-shirt',
    price: 139.99,
    reviewStars: 5.0,
    reviewCount: 45,
  ),
  Product(
    tag: 'New',
    isFavourite: true,
    imgUrl: 'assets/images/latestTwo.png',
    title: 'Awesome T-shirt',
    price: 139.99,
    reviewStars: 5.0,
    reviewCount: 45,
  ),
  Product(
    tag: 'New',
    isFavourite: true,
    imgUrl: 'assets/images/latestTwo.png',
    title: 'Awesome T-shirt',
    price: 139.99,
    reviewStars: 5.0,
    reviewCount: 45,
  ),
];

class Offer {
  Offer({required this.min, required this.max, required this.price});
  int min;
  int max;
  double price;
}

final List<Offer> offers = [
  Offer(min: 0, max: 100, price: 28.35),
  Offer(min: 101, max: 200, price: 20.35),
  Offer(min: 201, max: 300, price: 15.15),
  Offer(min: 301, max: 400, price: 12.55),
];

class Variation {
  Variation({required this.size});
  int size;
}

final List<Variation> variations = [
  Variation(size: 14),
  Variation(size: 18),
  Variation(size: 22),
  Variation(size: 24),
];

class VarientColor {
  VarientColor({required this.varientColor});
  Color varientColor;
}

final List<VarientColor> varientColors = [
  VarientColor(varientColor: const Color(0xff050f2c)),
  VarientColor(varientColor: const Color(0xff003666)),
  VarientColor(varientColor: const Color(0xff00aeff)),
  VarientColor(varientColor: const Color(0xffff6c5f)),
  VarientColor(varientColor: const Color(0xffff4f81)),
  VarientColor(varientColor: const Color(0xffffc168)),
];

class TagName {
  TagName({required this.tagName});
  String tagName;
}

final List<TagName> tags = [
  TagName(tagName: 'Laptop'),
  TagName(tagName: 'Computer'),
  TagName(tagName: 'Desktop'),
  TagName(tagName: 'Acer'),
  TagName(tagName: 'Dell'),
];

final List titles = [
  'Product Type',
  'Processor',
  'Ram',
  'Hard Disk',
  'Display Size',
  'Display Resolution',
  'Display Technology',
  'Connectivity',
  'Operating System'
];
final List titleValues = [
  'Laptop',
  'Intel Core I3',
  '8GB',
  '256GB SSD',
  '14"',
  '1920*1080',
  'LED',
  'USB 3.0',
  'Windows 10'
];
