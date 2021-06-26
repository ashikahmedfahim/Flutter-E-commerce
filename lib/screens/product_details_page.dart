import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lacuna/components/normal_appbar.dart';
import 'package:lacuna/components/product_details_main_button.dart';
import 'package:lacuna/components/table_builder.dart';
import 'package:lacuna/components/tags_builder.dart';
import 'package:lacuna/components/text_title.dart';
import 'package:lacuna/components/toast.dart';
import 'package:lacuna/components/video_player_builder.dart';
import 'package:lacuna/constants.dart';
import 'package:lacuna/mock_data/data.dart';
import 'package:lacuna/widget_builder/color_section_builder.dart';
import 'package:lacuna/widget_builder/inches_section_builder.dart';
import '../widget_builder/offer_section_builder.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product product;
  const ProductDetailsPage({Key? key, required this.product}) : super(key: key);

  @override
  _ProductDetailsPageState createState() =>
      _ProductDetailsPageState(product: product);
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  Product product;
  String selectedButton = 'Description';
  String selectedActionButton = '';
  _ProductDetailsPageState({required this.product});

  int productCount = 1;
  @override
  Widget build(BuildContext context) {
    var windowSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NormalAppBar(
        appBar: AppBar(),
        title: 'Product Details',
        disableIcon: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                              image:
                                  AssetImage('assets/images/latestTwo.png'))),
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
              TextTitle(title: 'Select Offer'),
              OfferSectionBuilder(offers: offers),
              TextTitle(title: 'Select Inches'),
              InchesSectionBuilder(variations: variations),
              TextTitle(title: 'Select Color'),
              ColorSectionBuilder(varientColors: varientColors),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 34.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductDetailsMainButton(
                      buttonName: 'Add To Cart',
                      buttonWidth: (windowSize.width / 2) - 20,
                      buttonBackgroundColor:
                          selectedActionButton == 'Add To Cart'
                              ? kPrimaryColor
                              : Colors.white,
                      setView: () {
                        showToast("Added To Cart");
                        setState(() {
                          selectedActionButton = 'Add To Cart';
                        });
                      },
                      routeString: "",
                    ),
                    ProductDetailsMainButton(
                      buttonName: 'Buy Now',
                      buttonWidth: (windowSize.width / 2) - 20,
                      buttonBackgroundColor: selectedActionButton == 'Buy Now'
                          ? kPrimaryColor
                          : Colors.white,
                      setView: () {
                        setState(() {
                          selectedActionButton = 'Buy Now';
                        });
                      },
                      routeString: "cart/",
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductDetailsMainButton(
                      buttonName: 'Description',
                      buttonWidth: (windowSize.width / 3) - 20,
                      buttonBackgroundColor: selectedButton == 'Description'
                          ? kPrimaryColor
                          : Colors.white,
                      setView: () {
                        setState(() {
                          selectedButton = 'Description';
                        });
                      },
                      routeString: "",
                    ),
                    ProductDetailsMainButton(
                        buttonName: 'Spec.',
                        buttonWidth: (windowSize.width / 3) - 20,
                        buttonBackgroundColor: selectedButton == 'Specification'
                            ? kPrimaryColor
                            : Colors.white,
                        setView: () {
                          setState(() {
                            selectedButton = 'Specification';
                          });
                        },
                        routeString: ""),
                    ProductDetailsMainButton(
                        buttonName: 'Videos',
                        buttonWidth: (windowSize.width / 3) - 20,
                        buttonBackgroundColor: selectedButton == 'Videos'
                            ? kPrimaryColor
                            : Colors.white,
                        setView: () {
                          setState(() {
                            selectedButton = 'Videos';
                          });
                        },
                        routeString: ""),
                  ],
                ),
              ),
              selectedButton == 'Description'
                  ? Text(
                      'Product description will be placed here. Product description will be placed here. ',
                      style: TextStyle(fontSize: 14.0),
                    )
                  : selectedButton == 'Specification'
                      ? TableBuilder(titles: titles, titleValues: titleValues)
                      : VideoApp(),
              TextTitle(title: 'Tags'),
              tagsBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
