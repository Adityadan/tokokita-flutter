import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Address Details',
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/icon_store_location.png',
                    width: 40,
                  ),
                  Image.asset(
                    'assets/icon_line.png',
                    height: 30,
                  ),
                  Image.asset('assets/icon_your_address.png', width: 40),
                ],
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Store Location',
                    style: subtitleTextStyle.copyWith(fontSize: 12),
                  ),
                  Text(
                    'Adidas Core',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Your Address',
                    style: subtitleTextStyle.copyWith(fontSize: 12),
                  ),
                  Text(
                    'Jimerto',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
            ],
          ),
          /* SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Column(),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff2F3344),
                  image: DecorationImage(
                    image: AssetImage('assets/icon_store_location.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Store Location',
                    style: subtitleTextStyle.copyWith(fontSize: 12),
                  ),
                  Text(
                    'Adidas Core',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff2F3344),
                  image: DecorationImage(
                    image: AssetImage('assets/icon_your_address.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Adresss',
                    style: subtitleTextStyle.copyWith(fontSize: 12),
                  ),
                  Text(
                    'Jimerto',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              )
            ],
          ) */
        ],
      ),
    );
  }
}
