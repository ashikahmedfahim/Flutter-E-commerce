import 'package:flutter/material.dart';
import 'package:lacuna/components/product_card.dart';
import 'package:lacuna/mock_data/data.dart';

class ProductVerticalSectionBuilder extends StatelessWidget {
  final List<Product> products;

  const ProductVerticalSectionBuilder({Key? key, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: 0.57,
          physics: BouncingScrollPhysics(),
          children: List.generate(
            products.length,
            (index) => ProductCard(
              product: products[index],
            ),
          ),
        ),
      ],
    );
  }
}
