import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';

class LabelWithSeeAll extends StatelessWidget {
  final String label;
  final String seeAllPressedRoute;
  const LabelWithSeeAll(
      {Key? key, required this.label, required this.seeAllPressedRoute})
      : super(key: key);

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
          onPressed: () => Navigator.pushNamed(context, seeAllPressedRoute),
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
