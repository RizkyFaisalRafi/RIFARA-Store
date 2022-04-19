import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rifaraclothstore/pages/detail_screen/detailPage2.dart';
import 'package:rifaraclothstore/style/categories_style.dart';
import 'package:rifaraclothstore/pages/cart_page.dart';
import 'package:rifaraclothstore/pages/notification_page.dart';
import 'package:rifaraclothstore/pages/product_page.dart';
import 'package:rifaraclothstore/pages/profile_page.dart';
import 'package:rifaraclothstore/pages/searchPage.dart';
import 'package:rifaraclothstore/style/product_list.dart';
import 'detail_screen/detailPag4.dart';
import 'detail_screen/detailPage.dart';
import 'detail_screen/detailPage3.dart';
import 'detail_screen/detailPage5.dart';
import 'detail_screen/detailPage6.dart';

class HomePage extends StatelessWidget {
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
                              prefixIcon: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SearchPage()),
                                  );
                                },
                                child: Icon(
                                  Icons.search,
                                  color: Color(0xff68687A),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff2C3545),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => CartPage()),
                                );
                              },
                              child: Container(
                                child: Image.asset(
                                  'assetsgambar/checkout_item.png',
                                  width: 28,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SingleChildScrollView(
              // Untuk Scroll Horizontal
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 24, left: 16),
                child: Row(
                  children: [
                    Container(
                      width: 294,
                      height: 148,
                      decoration: BoxDecoration(
                        color: Color(0xff6C5ECF),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27, left: 24),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New Arrival\nItem Up to 30%',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      side:
                                          BorderSide(color: Color(0xfff8f7fd)),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      )),
                                  child: Text(
                                    'Grab it now',
                                    style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16.0, left: 17.0),
                              child: Image.asset(
                                'assetsgambar/product_one_banner.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 294,
                      height: 148,
                      decoration: BoxDecoration(
                        color: Color(0xff21AE7B),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27, left: 24),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flash Deal\n12.12 Grab Now',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      side:
                                          BorderSide(color: Color(0xfff8f7fd)),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      )),
                                  child: Text(
                                    'Grab it now',
                                    style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(width: 15,),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 17.0,
                                bottom: 16.0,
                              ),
                              child: Image.asset(
                                'assetsgambar/girl_icon.png',
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

            Padding(
              padding:
                  const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Categories',
                    style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: GoogleFonts.montserrat(
                      color: Color(0xff68687A),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoriesStyle(
                      'assetsgambar/category_one.png', 'Stationary'),
                  CategoriesStyle(
                      'assetsgambar/category_two.png', 'Electronic'),
                  CategoriesStyle(
                      'assetsgambar/category_three.png', 'Houseware'),
                  CategoriesStyle(
                      'assetsgambar/category_four.png', 'Collection'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 32,
              ),
              child: Text(
                'Something You Like',
                style: GoogleFonts.montserrat(
                  color: Color(0xffF8F7FD),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 15, right: 15, bottom: 24),
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
                            'Rp1.650.000'
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPage2()),
                          );
                        },
                        child: ProductList4(
                            'assetsgambar/product_two.png',
                            'Smartwatch 2.0',
                            'assetsgambar/star.png',
                            '17',
                            'Rp4.500.000'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPage3()),
                          );
                        },
                        child: ProductList5(
                            'assetsgambar/product_three.png',
                            'Philips LED WI-FI',
                            'assetsgambar/star.png',
                            '17',
                            'Rp85.000'),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPage4()),
                          );
                        },
                        child: ProductList4(
                            'assetsgambar/product_four.png',
                            'Garnier Pure Act',
                            'assetsgambar/star.png',
                            '17',
                            'Rp27.839'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPage5()),
                          );
                        },
                        child: ProductList5(
                            'assetsgambar/product_five.png',
                            'Rexus Headphone',
                            'assetsgambar/star.png',
                            '17',
                            'Rp800.000'),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPage6()),
                          );
                        },
                        child: ProductList4(
                            'assetsgambar/product_six.png',
                            'Airpods',
                            'assetsgambar/star.png',
                            '17', 'Rp5.500.000'),
                      ),
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
        selectedLabelStyle: GoogleFonts.montserrat(
          color: Color(0xfff8f7fd),
          fontSize: 10
        ),
        unselectedLabelStyle: GoogleFonts.montserrat(
          color: Color(0xffCFCFCF),
          fontSize: 10,
        ),
        selectedItemColor: Color(0xffCFCFCF),
        unselectedItemColor: Color(0xff3B4351),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff030E22),
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Image.asset(
                'assetsgambar/home-16px-filled.png',
                width: 16,
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
                  'assetsgambar/product-16px-outline.png',
                  width: 16,
                ),
              ),
            ),
            label: 'Products'
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
              label: 'Notification'
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
              label: 'Profile'
          ),

        ],
      ),
    );
  }
}
