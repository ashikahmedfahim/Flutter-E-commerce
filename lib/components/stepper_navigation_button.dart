import 'package:flutter/material.dart';

import '../constants.dart';

Widget button(buttonName, buttonWidth, buttonColor, navigate) {
  return SizedBox(
    width: buttonWidth,
    child: TextButton(
      onPressed: () {
        navigate(buttonName);
      },
      style: TextButton.styleFrom(
        backgroundColor:
            buttonColor == kPrimaryColor ? kPrimaryColor : kDarkTextColor,
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
            color:
                buttonColor == kPrimaryColor ? kDarkTextColor : kPrimaryColor,
          ),
        ),
      ),
    ),
  );
}
