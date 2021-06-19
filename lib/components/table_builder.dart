import 'package:flutter/material.dart';
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
          width: 1,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Table(
        border: TableBorder.symmetric(
          inside: BorderSide(width: 1),
        ),
        children: [
          for (int i = 0; i < titles.length; i++)
            TableRow(
              children: [
                tableText(titles[i]),
                tableText(titleValues[i]),
              ],
            ),
        ],
      ),
    );
  }
}
