// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/components/color_card.dart';
import 'package:lacuna/mock_data/data.dart';

class ColorSectionBuilder extends StatefulWidget {
  final List<VarientColor> varientColors;
  const ColorSectionBuilder({Key? key, required this.varientColors})
      : super(key: key);

  @override
  _ColorSectionBuilderState createState() => _ColorSectionBuilderState();
}

class _ColorSectionBuilderState extends State<ColorSectionBuilder> {
  Color selectedValue = Colors.teal;
  selectValue(Color value) {
    setState(() {
      selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33.0,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: varientColors.length,
        itemBuilder: (BuildContext context, int index) => ColorCard(
          selectValue: selectValue,
          isSelected:
              selectedValue == varientColors[index].varientColor ? true : false,
          varientColor: varientColors[index],
        ),
      ),
    );
  }
}
