import 'package:flutter/material.dart';
import 'package:lacuna/components/category_card.dart';
import 'package:lacuna/mock_data/data.dart';

class CategoryXAxisSectionBuilder extends StatelessWidget {
  final List<Category> categories;
  const CategoryXAxisSectionBuilder({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.0,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) => CategoryCard(
          category: categories[index],
        ),
      ),
    );
  }
}
