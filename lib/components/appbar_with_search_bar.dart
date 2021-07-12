// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:badges/badges.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:lacuna/constants.dart';

class AppBarWithSearchBar extends StatelessWidget {
  const AppBarWithSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.dark,
      backgroundColor: kPrimaryColor,
      leading: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: IconButton(
          onPressed: () => Navigator.pushNamed(context, 'profile/'),
          icon: const Icon(
            Icons.person,
            size: 30,
          ),
        ),
      ),
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: SvgPicture.asset(
          'assets/images/Logo.svg',
          semanticsLabel: 'Lacuna',
          height: 40,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: 18.0,
          ),
          child: TextButton(
            onPressed: () => Navigator.pushNamed(context, 'cart/'),
            child: Badge(
              badgeColor: kSecondaryTextColor,
              badgeContent: const Text(
                '3',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Icon(
                Icons.shopping_bag,
                color: kDarkTextColor,
                size: 30,
              ),
            ),
          ),
        )
      ],
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 115.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, bottom: 15.0, right: 9.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: kDarkTextColor,
                      hintStyle: const TextStyle(
                        color: kGrey,
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 0.8,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 0.8,
                          color: kPrimaryColor,
                        ),
                      ),
                      hintText: 'Search here...',
                      prefixIcon: const Icon(Icons.search)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0, bottom: 15.0),
              child: Container(
                height: 44.0,
                width: 44.0,
                decoration: BoxDecoration(
                  color: kSecondaryButtonColor,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.tune_outlined,
                    color: kDarkTextColor,
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
