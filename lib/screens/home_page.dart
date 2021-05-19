import 'package:flutter/material.dart';
import 'package:lacuna/widgets/appbar_home.dart';
import 'package:lacuna/widgets/category_builder.dart';
import 'package:lacuna/widgets/section_builder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(138.0),
        child: AppBarHome(),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 10.0, bottom: 30.0, left: 16.0, right: 16.0),
            child: Image(
              height: 175.0,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/promotion.jpg'),
            ),
          ),
          CategoryBuilder(),
          SectionBuilder(),
          SectionBuilder(),
        ],
      ),
    );
  }
}
