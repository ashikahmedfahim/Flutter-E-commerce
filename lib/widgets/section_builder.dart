import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';
import 'package:lacuna/data.dart';
import 'package:lacuna/widgets/rating.dart';

class SectionBuilder extends StatefulWidget {
  @override
  _SectionBuilderState createState() => _SectionBuilderState();
}

class _SectionBuilderState extends State<SectionBuilder> {
  _buildCardItem(CardItem cardItem, bool isOdd) {
    return Container(
      margin: isOdd ? EdgeInsets.only(right: 11.0) : EdgeInsets.only(right: 0),
      //height: 383.0,
      decoration: BoxDecoration(
        color: kGreyBackground,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20.0,
                width: 40.0,
                decoration: BoxDecoration(
                  color: Color(0xff00d598),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(10.0)),
                ),
                child: Center(child: Text(cardItem.tag)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Center(
                  child: Icon(
                    Icons.favorite_border,
                    color: Color(0xffff404d),
                    size: 20.0,
                  ),
                ),
              ),
            ],
          ),
          Image(
            height: 134,
            image: AssetImage(cardItem.imgUrl),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 12.0),
            child: Text(
              cardItem.title,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            '\$${cardItem.price.toString()}',
            style: TextStyle(
              color: Color(0xfff42c04),
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingStars(5),
                Text(
                  '(' + cardItem.reviewCount.toString() + ' Reviews)',
                  style: TextStyle(fontSize: 10.0, color: kGrey),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7.0),
            width: 146.0,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kNavyBlue,
              ),
              onPressed: () {},
              child: Text(
                'Add To Cart',
                style: TextStyle(fontSize: 11.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      height: 360.0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xfff1ce35),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              childAspectRatio: kCardRatio,
              crossAxisCount: 2,
              children: List.generate(latest.length, (index) {
                CardItem cardItem = latest[index];
                bool isOdd = index % 2 == 0 ? true : false;
                return _buildCardItem(cardItem, isOdd);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
