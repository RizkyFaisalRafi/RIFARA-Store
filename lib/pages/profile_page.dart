import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rifaraclothstore/categories_style.dart';
import 'package:rifaraclothstore/pages/create_address.dart';
import 'package:rifaraclothstore/pages/edit_profile.dart';
import 'package:rifaraclothstore/pages/homePage.dart';
import 'package:rifaraclothstore/pages/login_page.dart';
import 'package:rifaraclothstore/pages/notification_page.dart';
import 'package:rifaraclothstore/pages/product_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SafeArea(
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Profile',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Image.asset(
                  'assetsgambar/profile.png',
                  width: 140,
                  height: 140,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Rizky Faisal Rafi',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order History',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See All',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffcfcfcf),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoriesStyle(
                          'assetsgambar/pending-24px-white.png', 'Pending'),
                      CategoriesStyle(
                          'assetsgambar/packed-24px-white.png', 'Packed'),
                      CategoriesStyle('assetsgambar/on_the_way-24px-white.png',
                          'On The Way'),
                      CategoriesStyle(
                          'assetsgambar/arrived-24px-white.png', 'Arrived'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 56, left: 15, right: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder:
                                (context, animation1, animation2) =>
                                EditProfile(), transitionDuration: Duration(seconds: 1)
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Edit Profile',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image.asset(
                              'assetsgambar/right_arrow.png',
                              width: 16,
                              height: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Divider(
                  color: Color(0xfff8f7fd),
                  thickness: 1,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 28, left: 15, right: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder:
                                (context, animation1, animation2) =>
                                    CreateAddress(), transitionDuration: Duration(seconds: 1)
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Address',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image.asset(
                              'assetsgambar/right_arrow.png',
                              width: 16,
                              height: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Divider(
                  color: Color(0xfff8f7fd),
                  thickness: 1,
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 100, bottom: 24),
                  child: Container(
                    width: 343,
                    height: 47,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xff6C5ECF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'Logout',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
        currentIndex: 3,
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
                    'assetsgambar/profile-16px-filled.png',
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
