import 'package:flutter/material.dart';
import 'package:lacuna/components/label_with_see_all.dart';
import 'package:lacuna/mock_data/data.dart';
import 'package:lacuna/widgets/appbar_home.dart';
import 'package:lacuna/widgets/category_x_axis_section_builder.dart';
import 'package:lacuna/widgets/product_x_axis_section_builder.dart';
import 'package:lacuna/widgets/product_y_axis_section_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(138.0),
        child: AppBarHome(),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 30.0),
        child: ListView(
          children: [
            Image(
              height: 175.0,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/promotion.jpg'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
                  child: Text(
                    'All Categories',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                CategoryXAxisSectionBuilder(categories: categories)
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0),
              height: 400.0,
              child: Column(
                children: [
                  LabelWithSeeAll(label: "Latest"),
                  ProductXAxisSectionBuilder(
                    products: products,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0),
              height: 400.0,
              child: Column(
                children: [
                  LabelWithSeeAll(label: "Best Seller"),
                  ProductXAxisSectionBuilder(
                    products: products,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0),
              height: 400.0,
              child: Column(
                children: [
                  LabelWithSeeAll(label: "Specials"),
                  ProductXAxisSectionBuilder(
                    products: products,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Column(
                children: [
                  LabelWithSeeAll(label: "All Products"),
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