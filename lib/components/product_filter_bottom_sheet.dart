import 'package:flutter/material.dart';

class ProductFilterBottomSheet extends StatefulWidget {
  const ProductFilterBottomSheet({Key? key}) : super(key: key);

  @override
  _ProductFilterBottomSheetState createState() =>
      _ProductFilterBottomSheetState();
}

class _ProductFilterBottomSheetState extends State<ProductFilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    RangeValues _currentRangeValues = const RangeValues(0, 50);
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Price Range"),
          RangeSlider(
            values: _currentRangeValues,
            min: _currentRangeValues.start,
            max: _currentRangeValues.end,
            divisions: 5,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
        ],
      ),
    );
  }
}
