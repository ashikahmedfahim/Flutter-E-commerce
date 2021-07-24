import 'package:flutter/material.dart';
import 'package:lacuna/components/order_history_single_product.dart';
import 'package:lacuna/constants.dart';

class OrderHistoryEachDate extends StatefulWidget {
  const OrderHistoryEachDate({Key? key}) : super(key: key);

  @override
  _OrderHistoryEachDateState createState() => _OrderHistoryEachDateState();
}

class _OrderHistoryEachDateState extends State<OrderHistoryEachDate> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            "06 July, 2021",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: kGreyText,
            ),
          ),
        ),
        Divider(
          thickness: 2.0,
        ),
        OrderHistorySingleProduct(),
        OrderHistorySingleProduct(),
        OrderHistorySingleProduct(),
      ],
    );
  }
}
