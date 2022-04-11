import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';

class CartPage extends StatelessWidget {
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
                                                HomePage(),
                                        transitionDuration:
                                            Duration(seconds: 1)),
                                  );
                                },
                                child: Image.asset(
                                    'assetsgambar/back-24px-white.png')),
                          ),
                        ),

                        SizedBox(width: 46,),

                        Center(
                          child: Container(
                            child: Center(
                              child: Text(
                                'Cart',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            width: 167,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 46,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 16),
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
              SizedBox(height: 24,),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 348,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Color(0xff2C3545),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Image.asset('assetsgambar/product_one.png'),

                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Nike Air Force X',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xffF8F7FD),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Rp1.650.000',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xffF8F7FD),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 120,top: 12),
                                  child: Image.asset(
                                    'assetsgambar/plusmin_icon.png',
                                    width: 66,
                                    height: 28,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 16,),

                    Container(
                      width: 348,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Color(0xff2C3545),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Image.asset('assetsgambar/product_one.png'),

                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nike Air Force X',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xffF8F7FD),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Rp1.650.000',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xffF8F7FD),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 120,top: 12),
                                  child: Image.asset(
                                    'assetsgambar/plusmin_icon.png',
                                    width: 66,
                                    height: 28,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              )
            ],
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff030e22),
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Text(
              'Rp6.150.000',
              style: GoogleFonts.montserrat(
                color: Color(0xffF8F7FD),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          label: '',
        ),

        BottomNavigationBarItem(
          icon: Container(
            width: 153,
            height: 47,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff6C5ECF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                )
              ),
              onPressed: () {},
              child:
              Text(
                'Checkout',
                style: GoogleFonts.montserrat(
                  color: Color(0xffF8F7FD),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          label: '',
        ),




      ],),
    );
  }
}
