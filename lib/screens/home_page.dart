// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/components/appbar_with_search_bar.dart';
import 'package:lacuna/components/label_with_see_all.dart';
import 'package:lacuna/mock_data/data.dart';
import 'package:lacuna/widget_builder/category_x_axis_section_builder.dart';
import 'package:lacuna/widget_builder/product_x_axis_section_builder.dart';
import 'package:lacuna/widget_builder/product_y_axis_section_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(160.0),
        child: AppBarWithSearchBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 30.0),
        child: ListView(
          children: [
            const Image(
              height: 175.0,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/promotion.jpg'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 20.0),
                  child: Text(
                    'All Categories',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CategoryXAxisSectionBuilder(categories: categories)
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 16.0),
              height: 400.0,
              child: Column(
                children: [
                  const LabelWithSeeAll(
                    label: "Latest",
                    seeAllPressedRoute: 'productDetails/',
                  ),
                  ProductXAxisSectionBuilder(
                    products: products,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 16.0),
              height: 400.0,
              child: Column(
                children: [
                  const LabelWithSeeAll(
                    label: "Best Seller",
                    seeAllPressedRoute: 'productDetails/',
                  ),
                  ProductXAxisSectionBuilder(
                    products: products,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 16.0),
              height: 400.0,
              child: Column(
                children: [
                  const LabelWithSeeAll(
                    label: "Specials",
                    seeAllPressedRoute: 'productDetails/',
                  ),
                  ProductXAxisSectionBuilder(
                    products: products,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                children: [
                  const LabelWithSeeAll(
                    label: "All Products",
                    seeAllPressedRoute: 'productDetails/',
                  ),
                  ProductYAxisSectionBuilder(
                    products: products,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
