// Flutter imports:
import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';

// Project imports:
import 'package:lacuna/mock_data/data.dart';

class ColorCard extends StatefulWidget {
  final VarientColor varientColor;
  final Function selectValue;
  final bool isSelected;
  const ColorCard(
      {Key? key,
      required this.selectValue,
      required this.isSelected,
      required this.varientColor})
      : super(key: key);

  @override
  _ColorCardState createState() => _ColorCardState();
}

class _ColorCardState extends State<ColorCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 33.0,
        decoration: BoxDecoration(
          color: widget.varientColor.varientColor,
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(
            color: kDarkTextColor,
            width: widget.isSelected ? 0.0 : 10.0,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              widget.selectValue(widget.varientColor.varientColor);
            });
          },
          child: const Text(''),
        ),
      ),
    );
  }
}
