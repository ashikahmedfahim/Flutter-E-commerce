import 'package:flutter/material.dart';
import 'package:lacuna/components/product_card.dart';
import 'package:lacuna/custom_design/SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight.dart';
import 'package:lacuna/mock_data/data.dart';

class ProductYAxisSectionBuilder extends StatelessWidget {
  final List<Product> products;

  const ProductYAxisSectionBuilder({Key? key, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: products.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
          crossAxisCount: 2,
          height: 320,
        ),
        itemBuilder: (BuildContext context, int index) =>
            ProductCard(product: products[index]),
      ),
    );
  }
}
