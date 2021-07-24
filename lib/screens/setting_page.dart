import 'package:flutter/material.dart';
import 'package:lacuna/components/normal_appbar.dart';
import 'package:lacuna/components/product_details_main_button.dart';

import '../constants.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  String selectedActionButton = 'Done';
  bool isVisible = false;
  void toggleVisibility(bool value) {
    setState(() {
      isVisible = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NormalAppBar(
        appBar: AppBar(),
        title: 'Setting',
        disableIcon: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: kDarkTextColor,
                      hintStyle: const TextStyle(
                        color: kGreyText,
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
                      hintText: 'Enter Your First Name',
                      prefixIcon: const Icon(
                        Icons.person,
                        color: kPrimaryColor,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: kDarkTextColor,
                      hintStyle: const TextStyle(
                        color: kGreyText,
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
                      hintText: 'Enter Your Last Name',
                      prefixIcon: const Icon(
                        Icons.person,
                        color: kPrimaryColor,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: kDarkTextColor,
                      hintStyle: const TextStyle(
                        color: kGreyText,
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
                      hintText: 'Enter Your Email',
                      prefixIcon: const Icon(
                        Icons.email,
                        color: kPrimaryColor,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: kDarkTextColor,
                      hintStyle: const TextStyle(
                        color: kGreyText,
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
                      hintText: 'Enter Your Phone Number',
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: kPrimaryColor,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: kDarkTextColor,
                      hintStyle: const TextStyle(
                        color: kGreyText,
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
                      hintText: 'Enter Your Date Of Birth',
                      prefixIcon: const Icon(
                        Icons.calendar_today,
                        color: kPrimaryColor,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextField(
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: !isVisible,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                    fillColor: kDarkTextColor,
                    hintStyle: const TextStyle(
                      color: kGreyText,
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
                    hintText: 'Enter Your Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        toggleVisibility(!isVisible);
                      },
                      icon: Icon(
                          isVisible ? Icons.visibility : Icons.visibility_off),
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: kDarkTextColor,
                      hintStyle: const TextStyle(
                        color: kGreyText,
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
                      hintText: 'Enter Your Country Name',
                      prefixIcon: const Icon(
                        Icons.flag,
                        color: kPrimaryColor,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: kDarkTextColor,
                      hintStyle: const TextStyle(
                        color: kGreyText,
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
                      hintText: 'Enter Your Country Code',
                      prefixIcon: const Icon(
                        Icons.location_on,
                        color: kPrimaryColor,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: kDarkTextColor,
                      hintStyle: const TextStyle(
                        color: kGreyText,
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
                      hintText: 'Enter Your State',
                      prefixIcon: const Icon(
                        Icons.pin_drop_rounded,
                        color: kPrimaryColor,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: kDarkTextColor,
                      hintStyle: const TextStyle(
                        color: kGreyText,
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
                      hintText: 'Enter Your City',
                      prefixIcon: const Icon(
                        Icons.apartment,
                        color: kPrimaryColor,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: kDarkTextColor,
                      hintStyle: const TextStyle(
                        color: kGreyText,
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
                      hintText: 'Enter Your Postal Code ',
                      prefixIcon: const Icon(
                        Icons.all_inbox,
                        color: kPrimaryColor,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: kDarkTextColor,
                      hintStyle: const TextStyle(
                        color: kGreyText,
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
                      hintText: 'Enter Your Street',
                      prefixIcon: const Icon(
                        Icons.navigation,
                        color: kPrimaryColor,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductDetailsMainButton(
                      buttonName: 'Cancel',
                      buttonWidth: (windowSize.width / 2) - 20,
                      buttonBackgroundColor: selectedActionButton == 'Cancel'
                          ? kPrimaryColor
                          : Colors.white,
                      setView: () {},
                      routeString: "",
                    ),
                    ProductDetailsMainButton(
                      buttonName: 'Done',
                      buttonWidth: (windowSize.width / 2) - 20,
                      buttonBackgroundColor: selectedActionButton == 'Done'
                          ? kPrimaryColor
                          : Colors.white,
                      setView: () {
                        setState(() {
                          selectedActionButton = 'Done';
                        });
                      },
                      routeString: "",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
