import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int productCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(68.0),
        child: AppBar(
          brightness: Brightness.dark,
          backgroundColor: kPrimaryColor,
          leading: IconButton(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 22.0),
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pushNamed(context, 'home/'),
          ),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                'Product Details',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 22.0),
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 25.0),
        child: Column(
          children: [
            Container(
              height: 204,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kProductDetailsImageBackground,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: kShareIconBackground,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            color: kDarkTextColor,
                          ),
                          color: kShareIconBackground,
                        ),
                      ),
                    ),
                    Center(
                        child: Image(
                            image: AssetImage('assets/images/latestTwo.png'))),
                    Material(
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: kFavoriteIconBackground,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: kDarkTextColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 28.0),
              child: Text(
                'Product Title',
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
            )
          ],
        ),
      ),
    );
  }
}
