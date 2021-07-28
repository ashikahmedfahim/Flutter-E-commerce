// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/constants.dart';
import 'package:lacuna/mock_data/data.dart';

class OfferCard extends StatefulWidget {
  final Offer offer;
  final Function selectValue;
  final bool isSelected;
  const OfferCard(
      {Key? key,
      required this.selectValue,
      required this.isSelected,
      required this.offer})
      : super(key: key);

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
          color: widget.isSelected ? kPrimaryColor : kDarkTextColor,
          border: Border.all(
            color: kGreyText,
            width: 1.5,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              widget.selectValue(widget.offer.price);
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      '${widget.offer.min} - ',
                      style: TextStyle(
                        color: widget.isSelected ? kDarkTextColor : kGreyText,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      '${widget.offer.max} pcs',
                      style: TextStyle(
                        color: widget.isSelected ? kDarkTextColor : kGreyText,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  '\$${widget.offer.price}',
                  style: TextStyle(
                    color: widget.isSelected ? kDarkTextColor : kPrimaryColor,
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
