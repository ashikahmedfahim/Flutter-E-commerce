// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/components/offer_card.dart';
import 'package:lacuna/mock_data/data.dart';

class OfferSectionBuilder extends StatefulWidget {
  final List<Offer> offers;
  const OfferSectionBuilder({Key? key, required this.offers}) : super(key: key);

  @override
  _OfferSectionBuilderState createState() => _OfferSectionBuilderState();
}

class _OfferSectionBuilderState extends State<OfferSectionBuilder> {
  double selectedValue = 0;
  selectValue(double value) {
    setState(() {
      selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73.0,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        itemBuilder: (BuildContext context, int index) => OfferCard(
            selectValue: selectValue,
            isSelected: selectedValue == offers[index].price ? true : false,
            offer: offers[index]),
      ),
    );
  }
}
