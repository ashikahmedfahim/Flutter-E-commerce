import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lacuna/components/normal_appbar.dart';
import 'package:lacuna/constants.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        children: [
                          Container(
                            height: 115,
                            width: 115,
                            decoration: BoxDecoration(
                              color: kProductDetailsImageBackground,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image(
                                  height: 60.0,
                                  width: 60.0,
                                  image: AssetImage(
                                      'assets/images/latestTwo.png')),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 5.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    'Acer Laptop',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    '\$130.99',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: kPriceColor,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5.0,
                                    horizontal: 0,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      print('hello');
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.delete_forever),
                                        Text(
                                          'Delete',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: kGreyText,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                    Divider(
                      thickness: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
