// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/components/table_text.dart';
import 'package:lacuna/constants.dart';

class TableBuilder extends StatelessWidget {
  final List titles;
  final List titleValues;
  const TableBuilder(
      {Key? key, required this.titles, required this.titleValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: kGreyText,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Table(
        border: TableBorder.symmetric(
          inside: const BorderSide(),
        ),
        children: [
          for (int i = 0; i < titles.length; i++)
            TableRow(
              children: [
                tableText(titles[i] as String),
                tableText(titleValues[i] as String),
              ],
            ),
        ],
      ),
    );
  }
}
