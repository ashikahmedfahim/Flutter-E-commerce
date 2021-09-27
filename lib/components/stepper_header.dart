import 'package:flutter/material.dart';

import '../constants.dart';

Widget header(activeStep) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          headerText(activeStep),
          style: const TextStyle(
            color: kPrimaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ],
  );
}

String headerText(activeStep) {
  switch (activeStep) {
    case 0:
      return 'Payments';

    case 1:
      return 'Summary';

    case 2:
      return 'Tracking';

    case 3:
      return 'Accept';

    default:
      return 'Payments';
  }
}
