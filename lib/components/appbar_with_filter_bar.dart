// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:lacuna/components/product_filter_bottom_sheet.dart';

// Project imports:
import 'package:lacuna/constants.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AppBarWithFilterBar extends StatefulWidget {
  const AppBarWithFilterBar({Key? key}) : super(key: key);

  @override
  _AppBarWithFilterBarState createState() => _AppBarWithFilterBarState();
}

class _AppBarWithFilterBarState extends State<AppBarWithFilterBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.dark,
      backgroundColor: kPrimaryColor,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, bottom: 15.0, right: 9.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                    fillColor: kDarkTextColor,
                    hintStyle: const TextStyle(
                      color: kGrey,
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        width: 0.8,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        width: 0.8,
                        color: kPrimaryColor,
                      ),
                    ),
                    hintText: 'Search here...',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0, bottom: 15.0),
              child: Container(
                height: 44.0,
                width: 44.0,
                decoration: BoxDecoration(
                  color: kSecondaryButtonColor,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: IconButton(
                  onPressed: () => showMaterialModalBottomSheet(
                    context: context,
                    builder: (context) => const ProductFilterBottomSheet(),
                  ),
                  icon: const Icon(
                    Icons.tune,
                    color: kDarkTextColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
