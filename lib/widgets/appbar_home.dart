import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff233851),
      leading: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: TextButton(
          onPressed: () {},
          child: Image(
            width: 21.43,
            height: 16.33,
            image: AssetImage('assets/images/menu.png'),
          ),
        ),
      ),
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Image(
          height: 37.0,
          width: 74.0,
          image: AssetImage('assets/images/Logo.png'),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: TextButton(
            onPressed: () {},
            child: Image(
              height: 25.34,
              width: 25.34,
              image: AssetImage('assets/images/notification.png'),
            ),
          ),
        )
      ],
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, bottom: 15.0, right: 9.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    hintStyle: TextStyle(
                      color: Color(0xffbcc3ca),
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
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    hintText: 'Search here...',
                    prefixIcon: Image(
                      color: Color(0xffbcc3ca),
                      image: AssetImage('assets/images/search_icon.png'),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0, bottom: 15.0),
              child: Container(
                height: 44.0,
                width: 44.0,
                decoration: BoxDecoration(
                  color: Color(0xfffee05b),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Image(
                    height: 25.34,
                    width: 25.34,
                    image: AssetImage('assets/images/custom_search.png'),
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
