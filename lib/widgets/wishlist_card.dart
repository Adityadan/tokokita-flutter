import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class WishlistCard extends StatelessWidget {
  // const WishlistCard({super.key});
  final String name;
  final String price;

  WishlistCard({this.name = '', this.price = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(top: 10, left: 12, bottom: 14, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/image_shoes7.png',
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // 'Terrex Urban Low',
                  name,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  // '\$143,98',
                  price,
                  style: priceTextStyle.copyWith(),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Image.asset(
            'assets/button_wishlist_blue.png',
            width: 34,
          ),
        ],
      ),
    );
  }
}
