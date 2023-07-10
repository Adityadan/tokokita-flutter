import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/order_card.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      title: Text(
        'Order List',
        style: primaryTextStyle.copyWith(fontWeight: medium, fontSize: 18),
      ),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      children: [
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
