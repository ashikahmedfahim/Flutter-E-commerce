import 'package:flutter/material.dart';
import 'package:lacuna/mock_data/data.dart';

class ColorCard extends StatefulWidget {
  final VarientColor varientColor;
  const ColorCard({Key? key, required this.varientColor}) : super(key: key);

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
        ),
        child: GestureDetector(
          onTap: () => null,
          child: Text(''),
        ),
      ),
    );
  }
}
