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
    var screenSize = MediaQuery.of(context).size;
    double screenSizeHeight = (Theme.of(context).platform == TargetPlatform.iOS)
        ? 130
        : screenSize.height / 5;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenSizeHeight),
        child: const AppBarWithSearchBar(
          showExtraProperty: true,
        ),
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
                  child: LabelWithSeeAll(
                    label: "All Categories",
                    seeAllPressedRoute: 'categories/',
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
                    seeAllPressedRoute: '/',
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
                    seeAllPressedRoute: '/',
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
                    seeAllPressedRoute: '/',
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
                    seeAllPressedRoute: '/',
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
