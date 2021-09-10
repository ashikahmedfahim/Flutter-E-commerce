// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/constants.dart';

class DynamicButton extends StatelessWidget {
  final String buttonName;
  final double buttonWidth;
  final Color buttonBackgroundColor;
  final VoidCallback setView;
  final String routeString;
  const DynamicButton({
    Key? key,
    required this.buttonName,
    required this.buttonWidth,
    required this.buttonBackgroundColor,
    required this.setView,
    required this.routeString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      child: TextButton(
        onPressed: () {
          setView();
          if (routeString != "") {
            Navigator.pushNamed(context, routeString);
          }
        },
        style: TextButton.styleFrom(
          backgroundColor: buttonBackgroundColor,
          side: const BorderSide(color: kPrimaryColor, width: 1.5),
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
