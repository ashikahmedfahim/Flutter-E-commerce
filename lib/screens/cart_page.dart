// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/components/cart_single_product.dart';
import 'package:lacuna/components/normal_appbar.dart';
import 'package:lacuna/constants.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NormalAppBar(
        appBar: AppBar(),
        title: 'Cart',
        disableIcon: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const CartSingleProduct(),
              const CartSingleProduct(),
              const CartSingleProduct(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                  height: 100.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cartFinalText(
                            "Sub Total",
                            16.0,
                            FontWeight.normal,
                            kGreyText,
                          ),
                          cartFinalText(
                            "\$124.21",
                            16.0,
                            FontWeight.bold,
                            kPrimaryColor,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cartFinalText(
                            "Shipping Cost",
                            16.0,
                            FontWeight.normal,
                            kGreyText,
                          ),
                          cartFinalText(
                            "\$4954.21",
                            16.0,
                            FontWeight.bold,
                            kPrimaryColor,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cartFinalText(
                            "Tax",
                            16.0,
                            FontWeight.normal,
                            kGreyText,
                          ),
                          cartFinalText(
                            "\$24.21",
                            16.0,
                            FontWeight.bold,
                            kPrimaryColor,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cartFinalText(
                            "Total Amount",
                            16.0,
                            FontWeight.bold,
                            kRedColor,
                          ),
                          cartFinalText(
                            "\$8634.21",
                            16.0,
                            FontWeight.bold,
                            kRedColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 45.0,
                      width: (screenSize.width / 6) * 2.7,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 5.0),
                          fillColor: kDarkTextColor,
                          hintStyle: const TextStyle(
                            color: kGreyText,
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                              width: 0.8,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                              width: 0.8,
                              color: kPrimaryColor,
                            ),
                          ),
                          hintText: 'Enter Voucher Code ',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 45.0,
                      width: (screenSize.width / 6) * 2.7,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                        ),
                        child: const Text(
                          "Apply",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: kDarkTextColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                  height: 60.0,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => Navigator.pushNamed(context, 'checkout/'),
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                    ),
                    child: const Center(
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.2,
                          color: kDarkTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text cartFinalText(
    String title,
    double titleSize,
    FontWeight titleFontWeight,
    Color titleColor,
  ) {
    return Text(
      title,
      style: TextStyle(
        fontSize: titleSize,
        fontWeight: titleFontWeight,
        color: titleColor,
      ),
    );
  }
}
