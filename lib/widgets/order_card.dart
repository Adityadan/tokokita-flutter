import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo/theme.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tap on order card');
      },
      child: Container(
        margin: EdgeInsets.only(top: 14),
        decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Image.asset(
                    'assets/icon_cart.png',
                    height: 28,
                    width: 28,
                  ),
                  /* Icon(
                    Icons.shopping_bag_rounded,
                    size: 30,
                    color: Colors.white,
                  ), */
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NAMA TOKO',
                      style: primaryTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 11),
                    ),
                    Text(
                      '10 Juli 2023',
                      style: GoogleFonts.poppins(
                          fontWeight: regular,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Text(
                          'Selesai ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            background: Paint()
                              ..color = Colors.green
                              ..strokeWidth = 13
                              ..strokeCap = StrokeCap.round
                              ..strokeJoin = StrokeJoin.round
                              ..style = PaintingStyle.stroke,
                            fontSize: 11,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: primaryColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: subtitleColor,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage('assets/image_shoes.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sepatu Basket',
                                style: GoogleFonts.poppins(
                                    fontWeight: medium, color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '1 Barang',
                                style: GoogleFonts.poppins(
                                    fontWeight: medium,
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      '+ 1 Produk Lainnya',
                      style: GoogleFonts.poppins(
                        fontWeight: medium,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Belanja',
                                style: GoogleFonts.poppins(
                                  fontWeight: regular,
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Rp. 44,500',
                                style: GoogleFonts.poppins(
                                  fontWeight: regular,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Ulas',
                                  style: GoogleFonts.poppins(
                                      fontWeight: medium,
                                      color: backgroundColor4),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  // padding: EdgeInsets.symmetric(horizontal: 30),
                                ),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'Beli Lagi',
                                style: GoogleFonts.poppins(
                                    fontWeight: medium, color: primaryColor),
                              ),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: primaryColor),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
