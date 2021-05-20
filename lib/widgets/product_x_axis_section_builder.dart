import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';
import 'package:lacuna/mock_data/data.dart';
import 'package:lacuna/components/product_card.dart';

class ProductXAxisSectionBuilder extends StatelessWidget {
  final String label;
  final List<Product> products;

  const ProductXAxisSectionBuilder(
      {Key? key, required this.label, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16.0),
      height: 400.0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: kSecondaryTextColor,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
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
          ),
        ],
      ),
    );
  }
}
