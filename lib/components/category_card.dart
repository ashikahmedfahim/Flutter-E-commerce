import 'package:flutter/material.dart';
import 'package:lacuna/mock_data/data.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => null,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
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
      ),
    );
  }
}
