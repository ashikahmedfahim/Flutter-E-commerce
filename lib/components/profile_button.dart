import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';

class ProfileButton extends StatelessWidget {
  final IconData buttonIcon;
  final String buttonName;
  const ProfileButton(
      {Key? key, required this.buttonName, required this.buttonIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(
                  buttonIcon,
                  color: kPrimaryColor,
                  size: 18.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    buttonName,
                    style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: kGreyText),
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.chevron_right,
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
      onTap: () {
        print(buttonName);
      },
    );
  }
}
