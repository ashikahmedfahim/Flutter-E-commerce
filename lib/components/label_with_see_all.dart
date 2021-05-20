import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';

class LabelWithSeeAll extends StatelessWidget {
  final String label;
  const LabelWithSeeAll({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See All',
            style: TextStyle(
              fontSize: 14.0,
              color: kSecondaryTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
