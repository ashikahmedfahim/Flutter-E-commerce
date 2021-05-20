import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';
import 'package:lacuna/mock_data/data.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        width: 160,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kGreyBackground,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: kLimeColor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10.0)),
                  ),
                  child: Center(child: Text(product.tag)),
                ),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: kRedColor,
                    size: 30.0,
                  ),
                ),
              ],
            ),
            Image(
              height: 134,
              image: AssetImage(product.imgUrl),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0, bottom: 12.0),
              child: Text(
                product.title,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              '\$${product.price.toString()}',
              style: TextStyle(
                color: kRedColor,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 146.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7), // <-- Radius
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Add To Cart',
                  style: TextStyle(fontSize: 12.0, color: kDarkTextColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
