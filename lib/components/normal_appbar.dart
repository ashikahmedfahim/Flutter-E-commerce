import 'package:flutter/material.dart';
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
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        !disableIcon
            ? IconButton(
                onPressed: () => Navigator.pushNamed(context, 'cart/'),
                icon: Icon(Icons.shopping_bag),
              )
            : Center(),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
