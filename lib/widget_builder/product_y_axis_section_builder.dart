// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/components/product_card.dart';
import 'package:lacuna/custom_design/sliver_grid_delegate_with_fixed_cross_axis_count_and_fixed_height.dart';
import 'package:lacuna/mock_data/data.dart';

class ProductYAxisSectionBuilder extends StatelessWidget {
  final List<Product> products;

  const ProductYAxisSectionBuilder({Key? key, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
        crossAxisCount: 2,
        height: 320,
      ),
      itemBuilder: (BuildContext context, int index) =>
          ProductCard(product: products[index]),
    );
  }
}
