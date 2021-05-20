import 'package:flutter/material.dart';
import 'package:lacuna/components/product_card.dart';
import 'package:lacuna/mock_data/data.dart';

class ProductYAxisSectionBuilder extends StatelessWidget {
  final List<Product> products;

  const ProductYAxisSectionBuilder({Key? key, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.1),
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
