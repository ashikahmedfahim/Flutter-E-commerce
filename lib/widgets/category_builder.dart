import 'package:flutter/material.dart';

import '../data.dart';

class CategoryBuilder extends StatefulWidget {
  @override
  _CategoryBuilderState createState() => _CategoryBuilderState();
}

class _CategoryBuilderState extends State<CategoryBuilder> {
  _buildAllCategories(BuildContext context, Category category) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Image(
              height: 60.0,
              width: 60.0,
              fit: BoxFit.cover,
              image: AssetImage(category.imgUrl),
            ),
          ),
          Text(
            category.title,
            style: TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 20.0),
          child: Text(
            'All Categories',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        Container(
          height: 95.0,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: allCategories.length,
            itemBuilder: (BuildContext context, int index) {
              Category category = allCategories[index];
              return _buildAllCategories(context, category);
            },
          ),
        ),
      ],
    );
  }
}
