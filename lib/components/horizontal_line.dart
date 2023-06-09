// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/constants.dart';

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: const [
            Divider(
              color: kGreyText,
              thickness: 2.0,
            ),
          ],
        ),
      ),
    );
  }
}
