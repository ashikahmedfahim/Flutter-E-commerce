import 'package:flutter/material.dart';
import 'package:lacuna/components/appbar_with_search_bar.dart';
import 'package:lacuna/components/product_filter_bottom_sheet.dart';
import 'package:lacuna/constants.dart';
import 'package:lacuna/mock_data/data.dart';
import 'package:lacuna/widget_builder/product_y_axis_section_builder.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SearchPage extends StatelessWidget {
  final String searchTerm;
  const SearchPage({Key? key, required this.searchTerm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double screenSizeHeight = (Theme.of(context).platform == TargetPlatform.iOS)
        ? 120
        : screenSize.height / 5;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenSizeHeight),
        child: AppBarWithSearchBar(
          searchTerm: searchTerm,
          showExtraProperty: false,
        ),
      ),
      body: ListView(
        children: [
          Material(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "118 Products Found",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () => showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => const ProductFilterBottomSheet(),
                    ),
                    icon: const Icon(
                      Icons.tune,
                      color: kSoftBlackColor,
                    ),
                    label: const Text(
                      "Filters",
                      style: TextStyle(
                        color: kSoftBlackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ProductYAxisSectionBuilder(products: products)
        ],
      ),
    );
  }
}
