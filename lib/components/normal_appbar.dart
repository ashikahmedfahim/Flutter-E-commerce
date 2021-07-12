// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:badges/badges.dart';

// Project imports:
import 'package:lacuna/constants.dart';

class NormalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final String title;
  final bool disableIcon;
  const NormalAppBar(
      {Key? key,
      required this.appBar,
      required this.title,
      required this.disableIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      brightness: Brightness.dark,
      backgroundColor: kPrimaryColor,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        if (!disableIcon) TextButton(
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
              ) else const Center(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
