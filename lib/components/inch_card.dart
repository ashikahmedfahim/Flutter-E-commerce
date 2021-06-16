import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';
import '../mock_data/data.dart';

class InchCard extends StatefulWidget {
  final Variation variation;
  const InchCard({Key? key, required this.variation}) : super(key: key);

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
          border: Border.all(
            color: kGreyText,
            width: 1.5,
          ),
        ),
        child: GestureDetector(
          onTap: () => null,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Text(
                widget.variation.size.toString() + "\"" + " inches",
                style: TextStyle(fontSize: 15.0, color: kGreyText),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
