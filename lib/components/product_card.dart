// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/components/toast.dart';
import 'package:lacuna/constants.dart';
import 'package:lacuna/mock_data/data.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, 'productDetails/', arguments: product),
      child: Container(
        width: 160,
        margin: const EdgeInsets.all(10),
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
                  decoration: const BoxDecoration(
                    color: kLimeColor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10.0)),
                  ),
                  child: Center(child: Text(product.tag)),
                ),
                IconButton(
                  onPressed: () => {},
                  icon: const Icon(
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
              padding: const EdgeInsets.only(top: 16.0, bottom: 6.0),
              child: Text(
                product.title,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              '\$${product.price.toString()}',
              style: const TextStyle(
                color: kRedColor,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 6.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7), // <-- Radius
                    ),
                  ),
                  onPressed: () => showToast("Added to cart"),
                  child: const Text(
                    'Add To Cart',
                    style: TextStyle(fontSize: 12.0, color: kDarkTextColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
