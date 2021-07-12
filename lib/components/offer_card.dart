// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/constants.dart';
import 'package:lacuna/mock_data/data.dart';

class OfferCard extends StatefulWidget {
  final Offer offer;
  const OfferCard({Key? key, required this.offer}) : super(key: key);

  @override
  _OfferCardState createState() => _OfferCardState();
}

class _OfferCardState extends State<OfferCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: kGreyText,
            width: 1.5,
          ),
        ),
        child: GestureDetector(
          onTap: () => {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      '${widget.offer.min} - ',
                      style: const TextStyle(
                        color: kGreyText,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      '${widget.offer.max} pcs',
                      style: const TextStyle(
                        color: kGreyText,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  '\$${widget.offer.price}',
                  style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
