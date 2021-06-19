import 'package:flutter/material.dart';
import 'package:lacuna/mock_data/data.dart';

Wrap tagsBuilder() {
  return Wrap(
    children: [
      for (int i = 0; i < tags.length; i++)
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: ChoiceChip(
              label: Text(
                tags[i].tagName,
                style: TextStyle(fontSize: 17.0),
              ),
              selected: false),
        ),
    ],
  );
}
