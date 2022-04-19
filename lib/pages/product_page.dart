import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rifaraclothstore/pages/cart_page.dart';
import 'package:rifaraclothstore/pages/homePage.dart';
import 'package:rifaraclothstore/pages/profile_page.dart';
import '../style/product_list.dart';
import 'detail_screen/detailPage.dart';
import 'notification_page.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          width: 308,
                          height: 40,
                          child: TextFormField(
                            cursorColor: Colors.white,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 11, bottom: 11),
                              fillColor: Color(0xff2c3545),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "I'm searching for...",
                              hintStyle: GoogleFonts.montserrat(
                                color: Color(0xff68687a),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xff68687A),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CartPage()),
                          );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xff2C3545),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                  'assetsgambar/checkout_item.png',
                                  width: 28,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  top: 24, left: 15, right: 15, bottom: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPage()),
                          );
                        },
                        child: ProductList5(
                            'assetsgambar/product_one.png',
                            'Nike Air Force X',
                            'assetsgambar/star.png',
                            '17',
                            'Rp1.650.000'),
                      ),
                      ProductList4(
                          'assetsgambar/product_two.png',
                          'Smartwatch 2.0',
                          'assetsgambar/star.png',
                          '17',
                          'Rp4.500.000'),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList5(
                          'assetsgambar/product_three.png',
                          'Philips LED WI-FI',
                          'assetsgambar/star.png',
                          '17',
                          'Rp85.000'),
                      ProductList4(
                          'assetsgambar/product_four.png',
                          'Garnier Pure Act',
                          'assetsgambar/star.png',
                          '17',
                          'Rp27.839'),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList5(
                          'assetsgambar/product_five.png',
                          'Rexus Headphone',
                          'assetsgambar/star.png',
                          '17',
                          'Rp800.000'),
                      ProductList4('assetsgambar/product_six.png', 'Airpods',
                          'assetsgambar/star.png', '17', 'Rp5.500.000'),
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "You've reached the end",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
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
        currentIndex: 1,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                          pageBuilder:
                              (context, animation1, animation2) =>
                                  HomePage(), transitionDuration: Duration(seconds: 1)
                      ),
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
                          pageBuilder:
                              (context, animation1, animation2) =>
                              ProductPage(), transitionDuration: Duration(seconds: 1)
                      ),
                    );
                  },
                  child: Image.asset(
                    'assetsgambar/product-16px-filled.png',
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
                          pageBuilder:
                              (context, animation1, animation2) =>
                              NotificationPage(), transitionDuration: Duration(seconds: 1)
                      ),
                    );
                  },
                  child: Image.asset(
                    'assetsgambar/notification-16px-outline.png',
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
                          pageBuilder:
                              (context, animation1, animation2) =>
                              ProfilePage(), transitionDuration: Duration(seconds: 1)
                      ),
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
