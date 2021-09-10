import 'package:flutter/material.dart';
import 'package:lacuna/components/category_card_bg.dart';
import 'package:lacuna/components/normal_appbar.dart';
import 'package:lacuna/custom_design/sliver_grid_delegate_with_fixed_cross_axis_count_and_fixed_height.dart';
import 'package:lacuna/mock_data/data.dart';
import '../mock_data/data.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar(
        appBar: AppBar(),
        title: 'Categories',
        disableIcon: false,
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
          padding: EdgeInsets.only(top: 25.0),
          shrinkWrap: true,
          itemCount: categories.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
            crossAxisCount: 3,
            height: 150,
          ),
          itemBuilder: (BuildContext context, int index) => CategoryCardBG(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}
