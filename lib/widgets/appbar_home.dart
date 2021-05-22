import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarHome extends StatelessWidget {

  final Widget logo = SvgPicture.asset(
      'assets/images/Logo.svg',
      semanticsLabel: 'Lacuna'
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: Padding(
        padding: EdgeInsets.only(top: 18.0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu_outlined,
            size: 30,
          ),
        ),
      ),
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(top: 45.0),
        child: Container(
          height: 27.0,
            width: 54.0,
            child: logo,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(
            top: 18.0,
          ),
          child: TextButton(
            onPressed: () {},
            child: Badge(
              badgeColor: kSecondaryTextColor,
              badgeContent: Text(
                '3',
                style: TextStyle(color: kDarkTextColor),
              ),
              child: Icon(
                Icons.shopping_bag,
                color: kDarkTextColor,
                size: 30,
              ),
            ),
          ),
        )
      ],
      flexibleSpace: Padding(
        padding: EdgeInsets.only(top: 100.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, bottom: 15.0, right: 9.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: kDarkTextColor,
                      hintStyle: TextStyle(
                        color: kGrey,
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 0.8,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 0.8,
                          color: kPrimaryColor,
                        ),
                      ),
                      hintText: 'Search here...',
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0, bottom: 15.0),
              child: Container(
                height: 44.0,
                width: 44.0,
                decoration: BoxDecoration(
                  color: kSecondaryButtonColor,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
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
