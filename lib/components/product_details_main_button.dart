import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';

class ProductDetailsMainButton extends StatelessWidget {
  final String buttonName;
  final double buttonWidth;
  final Color buttonBackgroundColor;
  final VoidCallback setView;
  const ProductDetailsMainButton({
    Key? key,
    required this.buttonName,
    required this.buttonWidth,
    required this.buttonBackgroundColor,
    required this.setView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      child: TextButton(
        onPressed: () => setView(),
        style: TextButton.styleFrom(
          backgroundColor: buttonBackgroundColor,
          side: BorderSide(color: kPrimaryColor, width: 1.5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
              color: buttonBackgroundColor == kPrimaryColor
                  ? kDarkTextColor
                  : kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
