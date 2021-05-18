import 'package:flutter/material.dart';
import 'package:lacuna/widgets/appbar_home.dart';
import '../data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _buildAllCategories(BuildContext context, Category category) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Image(
              height: 60.0,
              width: 60.0,
              fit: BoxFit.cover,
              image: AssetImage(category.imgUrl),
            ),
          ),
          Text(
            category.title,
            style: TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 20.0),
                child: Text(
                  'All Categories',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                height: 95.0,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 10.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: allCategories.length,
                  itemBuilder: (BuildContext context, int index) {
                    Category category = allCategories[index];
                    return _buildAllCategories(context, category);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
