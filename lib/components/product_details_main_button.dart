import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';

class ProductDetailsMainButton extends StatelessWidget {
  final String buttonName;
  const ProductDetailsMainButton({Key? key, required this.buttonName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          side: BorderSide(color: kPrimaryColor, width: 1.5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 35.0,
          ),
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
