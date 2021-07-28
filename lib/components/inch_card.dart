// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/constants.dart';
import '../mock_data/data.dart';

class InchCard extends StatefulWidget {
  final Variation variation;
  final Function selectValue;
  final bool isSelected;
  const InchCard(
      {Key? key,
      required this.selectValue,
      required this.isSelected,
      required this.variation})
      : super(key: key);

  @override
  _InchCardState createState() => _InchCardState();
}

class _InchCardState extends State<InchCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: widget.isSelected ? kPrimaryColor : kDarkTextColor,
          border: Border.all(
            color: kGreyText,
            width: 1.5,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              widget.selectValue(widget.variation.size);
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Text(
                '${widget.variation.size}" inches',
                style: TextStyle(
                    fontSize: 15.0,
                    color: widget.isSelected ? kDarkTextColor : kGreyText),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
