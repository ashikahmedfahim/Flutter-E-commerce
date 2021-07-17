import 'package:flutter/material.dart';
import 'package:lacuna/components/appbar_with_filter_bar.dart';

class SearchPage extends StatelessWidget {
  final String searchTerm;
  const SearchPage({Key? key, required this.searchTerm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBarWithFilterBar(),
      ),
    );
  }
}
