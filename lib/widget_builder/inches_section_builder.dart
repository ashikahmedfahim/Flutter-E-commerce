// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/components/inch_card.dart';
import '../mock_data/data.dart';

class InchesSectionBuilder extends StatefulWidget {
  final List<Variation> variations;

  const InchesSectionBuilder({Key? key, required this.variations})
      : super(key: key);

  @override
  _InchesSectionBuilderState createState() => _InchesSectionBuilderState();
}

class _InchesSectionBuilderState extends State<InchesSectionBuilder> {
  int selectedValue = 0;
  selectValue(int value) {
    setState(() {
      selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: variations.length,
        itemBuilder: (BuildContext context, int index) => InchCard(
          selectValue: selectValue,
          isSelected: selectedValue == variations[index].size ? true : false,
          variation: variations[index],
        ),
      ),
    );
  }
}
