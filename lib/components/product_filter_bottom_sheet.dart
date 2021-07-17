import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';

class ProductFilterBottomSheet extends StatefulWidget {
  const ProductFilterBottomSheet({Key? key}) : super(key: key);

  @override
  _ProductFilterBottomSheetState createState() =>
      _ProductFilterBottomSheetState();
}

class _ProductFilterBottomSheetState extends State<ProductFilterBottomSheet> {
  RangeValues _currentRangeValues = const RangeValues(50, 150);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Price Range",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RangeSlider(
            activeColor: kPrimaryColor,
            values: _currentRangeValues,
            min: _currentRangeValues.start,
            max: _currentRangeValues.end,
            divisions: 5,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
          SizedBox(
            height: 50.0,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              onPressed: () => {},
              child: const Text(
                'Apply',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                  color: kDarkTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
