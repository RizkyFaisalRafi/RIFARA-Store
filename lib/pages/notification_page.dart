import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rifaraclothstore/style/notification_style.dart';
import 'package:rifaraclothstore/pages/homePage.dart';
import 'package:rifaraclothstore/pages/product_page.dart';
import 'package:rifaraclothstore/pages/profile_page.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Center(
                  child: Center(
                    child: Text(
                      'Notification',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                NotificationStyle(
                  'Order #20181111123 has arrived!',
                  "What you've been waiting for has arrived! Don't forget\nto confirm on the history page!",
                  'assetsgambar/schedule-16px-grey.png',
                  '09-04-2021 17:51',
                ),
                SizedBox(
                  height: 16,
                ),
                NotificationStyle(
                  'Order #20181111122 has been cancelled',
                  "Your order has been canceled by the system. Chat to\nthe shop owner for more information",
                  'assetsgambar/schedule-16px-grey.png',
                  '05-04-2021 17:51',
                ),
                SizedBox(
                  height: 16,
                ),
                NotificationStyle(
                  'Order #20181111121 is being processed',
                  "hurray.. the seller is preparing your order wait a little\nlonger, okay?",
                  'assetsgambar/schedule-16px-grey.png',
                  '01-04-2021 17:51',
                ),
                SizedBox(
                  height: 16,
                ),
                NotificationStyle(
                  'Order #20181111120 waiting for your payment',
                  "let's complete the payment or your order will be\nautomatically canceled by the system in 3 days",
                  'assetsgambar/schedule-16px-grey.png',
                  '25-03-2021 17:51',
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle:
            GoogleFonts.montserrat(color: Color(0xfff8f7fd), fontSize: 10),
        unselectedLabelStyle: GoogleFonts.montserrat(
          color: Color(0xffCFCFCF),
          fontSize: 10,
        ),
        selectedItemColor: Color(0xffCFCFCF),
        unselectedItemColor: Color(0xff3B4351),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff030E22),
        currentIndex: 2,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            HomePage(),
                        transitionDuration: Duration(seconds: 1)),
                  );
                },
                child: Image.asset(
                  'assetsgambar/home-16px-outline.png',
                  width: 16,
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              ProductPage(),
                          transitionDuration: Duration(seconds: 1)),
                    );
                  },
                  child: Image.asset(
                    'assetsgambar/product-16px-outline.png',
                    width: 16,
                  ),
                ),
              ),
              label: 'Products'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              NotificationPage(),
                          transitionDuration: Duration(seconds: 1)),
                    );
                  },
                  child: Image.asset(
                    'assetsgambar/notification-16px-filled.png',
                    width: 16,
                  ),
                ),
              ),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              ProfilePage(),
                          transitionDuration: Duration(seconds: 1)),
                    );
                  },
                  child: Image.asset(
                    'assetsgambar/profile-16px-outline.png',
                    width: 16,
                  ),
                ),
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
