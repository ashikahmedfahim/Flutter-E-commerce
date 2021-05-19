import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';
import 'package:lacuna/mock_data/data.dart';
import 'package:lacuna/widgets/appbar_home.dart';
import 'package:lacuna/widgets/category_horizontal_section_builder.dart';
import 'package:lacuna/widgets/product_horizontal_section_builder.dart';
import 'package:lacuna/widgets/product_vertical_section_builder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              CategoryHorizontalSectionBuilder(categories: categories)
              ],
            ),
            ProductHorizontalSectionBuilder(
              label: "Latest",
              products: products,
            ),
            ProductHorizontalSectionBuilder(
              label: "Best Seller",
              products: products,
            ),
            ProductHorizontalSectionBuilder(
              label: "Specials",
              products: products,
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "All Products",
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
                  ProductVerticalSectionBuilder(
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
