import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Profile Page',
          style: primaryTextStyle.copyWith(fontSize: 30, fontWeight: bold),
        ),
      ),
    );
  }
}
