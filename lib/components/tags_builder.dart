// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
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
                style: const TextStyle(fontSize: 17.0),
              ),
              selected: false),
        ),
    ],
  );
}
