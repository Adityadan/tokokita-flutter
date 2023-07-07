import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class profilePage extends StatelessWidget {
  // const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Future<bool> showExitPopup() async {
    //   return await showDialog(
    //         //show confirm dialogue
    //         //the return value will be from "Yes" or "No" options
    //         context: context,
    //         builder: (context) => AlertDialog(
    //           title: Text('Exit App'),
    //           content: Text('Do you want to exit an App?'),
    //           actions: [
    //             ElevatedButton(
    //               onPressed: () => Navigator.of(context).pop(false),
    //               //return false when click on "NO"
    //               child: Text('No'),
    //             ),
    //             ElevatedButton(
    //               onPressed: () => Navigator.pushNamedAndRemoveUntil(
    //                   context, '/sign-in', (route) => false),
    //               //return true when click on "Yes"
    //               child: Text('Yes'),
    //             ),
    //           ],
    //         ),
    //       ) ??
    //       false; //if showDialouge had returned null, then return false
    // }

    Future showExitPopup() {
      return AwesomeDialog(
        context: context,
        dialogBackgroundColor: backgroundColor1,
        dialogType: DialogType.warning,
        headerAnimationLoop: false,
        animType: AnimType.bottomSlide,
        title: 'Apakah Anda Yakin ?',
        titleTextStyle: primaryTextStyle,
        desc: 'Akun anda akan keluar dari aplikasi',
        descTextStyle: primaryTextStyle,
        buttonsTextStyle: const TextStyle(color: Colors.black),
        showCloseIcon: true,
        btnCancelOnPress: () {},
        btnOkOnPress: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-in', (route) => false);
        },
      ).show();
    }

    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/image_profile.png',
                    width: 64,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, Alex',
                        style: primaryTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '@alexanjaz',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushNamedAndRemoveUntil(
                    //     context, '/sign-in', (route) => false);
                    showExitPopup();
                  },
                  child: Image.asset(
                    'assets/button_exit.png',
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        // elevation: 0,
      );
    }

    Widget menuItem(String text, String url) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, url);
        },
        child: Container(
          margin: EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: primaryTextColor,
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: backgroundColor3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 20,
              // ),
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: Text(
                  'Account',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
              ),
              menuItem('Edit Profile', '/edit-profile'),
              menuItem('Your Orders', ''),
              menuItem('Help', ''),
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: Text(
                  'General',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
              ),
              menuItem('Privacy & Policy', ''),
              menuItem('Term of Service', ''),
              menuItem('Rate App', ''),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
