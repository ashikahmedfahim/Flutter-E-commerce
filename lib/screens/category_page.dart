import 'package:flutter/material.dart';
import 'package:lacuna/components/dynamic_button.dart';
import 'package:lacuna/components/normal_appbar.dart';
import 'package:lacuna/mock_data/data.dart';
import 'package:lacuna/widget_builder/product_y_axis_section_builder.dart';

import '../constants.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  String selectedButton = 'Description';
  String selectedActionButton = '';
  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NormalAppBar(
        appBar: AppBar(),
        title: 'Electronics',
        disableIcon: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 16.0),
              child: SizedBox(
                height: 60.0,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: DynamicButton(
                        buttonName: categories[index].title,
                        buttonWidth: (windowSize.width / 3),
                        buttonBackgroundColor:
                            selectedButton == categories[index].title
                                ? kPrimaryColor
                                : Colors.white,
                        setView: () {
                          setState(() {
                            selectedButton = categories[index].title;
                          });
                        },
                        routeString: ""),
                  ),
                ),
              ),
            ),
            ProductYAxisSectionBuilder(
              products: products,
            ),
          ],
        ),
      ),
    );
  }
}
