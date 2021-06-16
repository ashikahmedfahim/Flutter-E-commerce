import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33.0,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: varientColors.length,
        itemBuilder: (BuildContext context, int index) => ColorCard(
          varientColor: varientColors[index],
        ),
      ),
    );
  }
}
