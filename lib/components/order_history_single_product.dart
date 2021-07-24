// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../constants.dart';

class OrderHistorySingleProduct extends StatefulWidget {
  const OrderHistorySingleProduct({Key? key}) : super(key: key);

  @override
  _OrderHistorySingleProductState createState() =>
      _OrderHistorySingleProductState();
}

class _OrderHistorySingleProductState extends State<OrderHistorySingleProduct> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 115,
                    width: 115,
                    decoration: BoxDecoration(
                      color: kProductDetailsImageBackground,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Image(
                          height: 60.0,
                          width: 60.0,
                          image: AssetImage('assets/images/latestTwo.png')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 5.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            'Awesome T-Shirt',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            '\$130.99',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: kPriceColor,
                            ),
                          ),
                        ),
                        ChoiceChip(
                          label: Text('Cancelled'),
                          selected: true,
                          selectedColor: kPriceColor,
                          labelStyle: TextStyle(
                            color: kDarkTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 2.0,
        ),
      ],
    );
  }
}
