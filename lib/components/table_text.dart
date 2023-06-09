// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/constants.dart';

Padding tableText(String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
    child: Text(
      value,
      style: const TextStyle(
        fontSize: 14.0,
        color: kDarkAshColor,
      ),
    ),
  );
}
