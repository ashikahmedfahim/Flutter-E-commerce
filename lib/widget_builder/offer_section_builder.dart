import 'package:flutter/material.dart';
import 'package:lacuna/components/offer_card.dart';
import 'package:lacuna/mock_data/data.dart';

class OfferSectionBuilder extends StatefulWidget {
  final List<Offer> offers;
  const OfferSectionBuilder({Key? key, required this.offers}) : super(key: key);

  @override
  _OfferSectionBuilderState createState() => _OfferSectionBuilderState();
}

class _OfferSectionBuilderState extends State<OfferSectionBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73.0,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        itemBuilder: (BuildContext context, int index) => OfferCard(
          offer: offers[index],
        ),
      ),
    );
  }
}
