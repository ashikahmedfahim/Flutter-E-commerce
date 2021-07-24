// Flutter imports:
import 'package:flutter/material.dart';
import 'package:lacuna/components/normal_appbar.dart';
import 'package:lacuna/components/order_history_each_date.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar(
        appBar: AppBar(),
        title: 'Order History',
        disableIcon: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          children: const [
            OrderHistoryEachDate(),
            OrderHistoryEachDate(),
          ],
        ),
      )),
    );
  }
}
