import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rifaraclothstore/pages/grey_cancel.dart';
import 'package:rifaraclothstore/pages/order_again_page.dart';
import 'package:rifaraclothstore/pages/order_detail.dart';
import 'package:rifaraclothstore/pages/payment_success.dart';
import 'package:rifaraclothstore/pages/rate_order_page.dart';

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Color(0xff030E22),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 150,
          backgroundColor: Color(0xff030E22),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xff2C3545),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                PaymentSuccess(),
                                        transitionDuration: Duration(seconds: 1)),
                                  );
                                },
                                child: Image.asset(
                                    'assetsgambar/back-24px-white.png')),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 90),
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Order History',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              width: 179,
                              height: 40,
                              decoration:
                                  BoxDecoration(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text(
                          'Pending',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Packed',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'On The Way',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Arrrived',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Canceled',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Return',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Scaffold(
              backgroundColor: Color(0xff030E22),
              body: Column(
                children: [
                  SizedBox(height: 24,),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                              pageBuilder:
                                  (context, animation1, animation2) =>
                                  OrderDetail(), transitionDuration: Duration(seconds: 1)
                          ),
                        );
                      },
                      child: Container(
                        width: 342,
                        height: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff2c3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assetsgambar/product_one.png',
                                  width: 115,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 24,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nike Air Force X',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xfff8f7fd),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Rp1.650.000 x1',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xfff8f7fd),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Divider(
                                  color: Color(0xffcfcfcf),
                                  thickness: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12, right: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '2 Products',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Rp6.150.000',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xff030E22),
              body: Column(
                children: [
                  SizedBox(height: 24,),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                              pageBuilder:
                                  (context, animation1, animation2) =>
                                  GreyCancel(), transitionDuration: Duration(seconds: 1)
                          ),
                        );
                      },
                      child: Container(
                        width: 342,
                        height: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff2c3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [

                                Image.asset(
                                  'assetsgambar/product_one.png',
                                  width: 115,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 24,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nike Air Force X',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xfff8f7fd),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Rp1.650.000 x1',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xfff8f7fd),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Divider(
                                  color: Color(0xffcfcfcf),
                                  thickness: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12, right: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '2 Products',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Rp6.150.000',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xff030E22),
              body: Column(
                children: [
                  SizedBox(height: 24,),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                              pageBuilder:
                                  (context, animation1, animation2) =>
                                  GreyCancel(), transitionDuration: Duration(seconds: 1)
                          ),
                        );
                      },
                      child: Container(
                        width: 342,
                        height: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff2c3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [

                                Image.asset(
                                  'assetsgambar/product_one.png',
                                  width: 115,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 24,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nike Air Force X',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xfff8f7fd),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Rp1.650.000 x1',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xfff8f7fd),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Divider(
                                  color: Color(0xffcfcfcf),
                                  thickness: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12, right: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '2 Products',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Rp6.150.000',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xff030E22),
              body: Column(
                children: [
                  SizedBox(height: 24,),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                              pageBuilder:
                                  (context, animation1, animation2) =>
                                  RateOrderPage(), transitionDuration: Duration(seconds: 1)
                          ),
                        );
                      },
                      child: Container(
                        width: 342,
                        height: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff2c3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assetsgambar/product_one.png',
                                  width: 115,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 24,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nike Air Force X',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xfff8f7fd),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Rp1.650.000 x1',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xfff8f7fd),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Divider(
                                  color: Color(0xffcfcfcf),
                                  thickness: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12, right: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '2 Products',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Rp6.150.000',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xff030E22),
              body: Column(
                children: [
                  SizedBox(height: 24,),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                              pageBuilder:
                                  (context, animation1, animation2) =>
                                  OrderAgain(), transitionDuration: Duration(seconds: 1)
                          ),
                        );
                      },
                      child: Container(
                        width: 342,
                        height: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff2c3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [

                                Image.asset(
                                  'assetsgambar/product_one.png',
                                  width: 115,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 24,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nike Air Force X',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xfff8f7fd),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Rp1.650.000 x1',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xfff8f7fd),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Divider(
                                  color: Color(0xffcfcfcf),
                                  thickness: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12, right: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '2 Products',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Rp6.150.000',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xff030E22),
              body: Column(
                children: [
                  SizedBox(height: 24,),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                              pageBuilder:
                                  (context, animation1, animation2) =>
                                  OrderAgain(), transitionDuration: Duration(seconds: 1)
                          ),
                        );
                      },
                      child: Container(
                        width: 342,
                        height: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff2c3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [

                                Image.asset(
                                  'assetsgambar/product_one.png',
                                  width: 115,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 24,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nike Air Force X',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xfff8f7fd),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Rp1.650.000 x1',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xfff8f7fd),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Divider(
                                  color: Color(0xffcfcfcf),
                                  thickness: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12, right: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '2 Products',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Rp6.150.000',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}


