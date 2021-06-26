import 'package:flutter/material.dart';
import '../constants.dart';

class CartSingleProduct extends StatefulWidget {
  const CartSingleProduct({Key? key}) : super(key: key);

  @override
  _CartSingleProductState createState() => _CartSingleProductState();
}

class _CartSingleProductState extends State<CartSingleProduct> {
  int productCount = 1;
  void setProductCount(String value) {
    if (value == "+") {
      setState(() {
        productCount += 1;
      });
    } else if (value == "-") {
      setState(() {
        productCount == 1 ? productCount = productCount : productCount -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
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
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
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
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
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
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              '\$130.99',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: kPriceColor,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5.0,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    print('hello');
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: kPrimaryColor,
                                      ),
                                      Text(
                                        'Wishlist',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: kGreyText,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.0,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    print('hello');
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.delete_forever,
                                        color: kPrimaryColor,
                                      ),
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
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 80.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: kPrimaryColor,
                      width: 1.5,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        child: Ink(
                          height: 15.0,
                          width: 15.0,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setProductCount("+");
                            },
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(
                              Icons.add,
                              color: kDarkTextColor,
                              size: 15.0,
                            ),
                            color: kShareIconBackground,
                          ),
                        ),
                      ),
                      Text(
                        productCount.toString(),
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Material(
                        child: Ink(
                          height: 15.0,
                          width: 15.0,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setProductCount("-");
                            },
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(
                              Icons.remove,
                              color: kDarkTextColor,
                              size: 15.0,
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
    );
  }
}
