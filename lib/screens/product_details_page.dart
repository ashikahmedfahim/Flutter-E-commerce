import 'package:flutter/material.dart';
import 'package:lacuna/components/normal_appbar.dart';
import 'package:lacuna/constants.dart';
import 'package:lacuna/mock_data/data.dart';
import 'package:lacuna/mock_data/data.dart';
import '../widgets/offer_section_builder.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product product;
  const ProductDetailsPage({Key? key, required this.product}) : super(key: key);

  @override
  _ProductDetailsPageState createState() =>
      _ProductDetailsPageState(product: product);
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  Product product;
  _ProductDetailsPageState({required this.product});

  int productCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar(
        appBar: AppBar(),
        title: 'Product Details',
        route: '/',
        icon: Icon(Icons.notifications),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 204,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kProductDetailsImageBackground,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(13),
                        primary: kShareIconBackground,
                      ),
                      child: Icon(
                        Icons.share,
                      ),
                      onPressed: () {},
                    ),
                    Center(
                        child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/latestTwo.png'))),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(13),
                        primary: kFavoriteIconBackground,
                      ),
                      child: Icon(
                        Icons.favorite,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 28.0),
              child: Text(
                product.title,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '\$230',
                        style: TextStyle(
                          color: kFavoriteIconBackground,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '\$240',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            '-10%',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 43.0,
                    width: 118.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: kPrimaryColor,
                        width: 1.5,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          child: Ink(
                            height: 22.0,
                            width: 22.0,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  productCount == 1
                                      ? productCount = productCount
                                      : productCount -= 1;
                                });
                              },
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              icon: Icon(
                                Icons.remove,
                                color: kDarkTextColor,
                                size: 22.0,
                              ),
                              color: kShareIconBackground,
                            ),
                          ),
                        ),
                        Text(
                          productCount.toString(),
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Material(
                          child: Ink(
                            height: 22.0,
                            width: 22.0,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  productCount += 1;
                                });
                              },
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              icon: Icon(
                                Icons.add,
                                color: kDarkTextColor,
                                size: 22.0,
                              ),
                              color: kShareIconBackground,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Select Offer',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            OfferSectionBuilder(offers: offers),
          ],
        ),
      ),
    );
  }
}
