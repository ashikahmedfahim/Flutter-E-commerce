import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;
  const TextTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
