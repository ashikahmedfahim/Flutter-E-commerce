import 'package:flutter/material.dart';
import 'package:lacuna/components/normal_appbar.dart';
import 'package:lacuna/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NormalAppBar(
          appBar: AppBar(),
          title: 'Profile',
          disableIcon: false,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 260,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kGreyBackground,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: kDarkTextColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: kGreyText,
                              spreadRadius: 0.0001,
                            )
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: kDarkTextColor,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/promotion.jpg'),
                          ),
                        ),
                      ),
                      Text(
                        "Tanzir Fahad",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Narshingdi, Dhaka",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: kGreyText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7), // <-- Radius
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                      color: kDarkTextColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
