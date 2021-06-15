import 'package:flutter/material.dart';
import 'package:lacuna/mock_data/data.dart';
import 'package:lacuna/components/product_card.dart';

class ProductXAxisSectionBuilder extends StatelessWidget {
  final List<Product> products;

  const ProductXAxisSectionBuilder(
      {Key? key, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: products.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              ProductCard(product: products[index]),
        ),
      ),
    );
  }
}
