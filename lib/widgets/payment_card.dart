import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class PaymentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultMargin),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Summary',
            style: primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Product Quantity',
                style: subtitleTextStyle.copyWith(
                    fontWeight: regular, fontSize: 12),
              ),
              Text(
                '2 Items',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Product Price',
                style: subtitleTextStyle.copyWith(
                    fontWeight: regular, fontSize: 12),
              ),
              Text(
                '\$575.96',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping',
                style: subtitleTextStyle.copyWith(
                    fontWeight: regular, fontSize: 12),
              ),
              Text(
                'Free',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 11,
          ),
          Divider(
            thickness: 1,
            color: subtitleColor,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: priceTextStyle.copyWith(fontWeight: semiBold),
              ),
              Text(
                '\$575.92',
                style:
                    priceTextStyle.copyWith(fontWeight: semiBold, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
